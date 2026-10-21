Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fftfilt?download=true
inline.NumInlined: 27
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@copy_vertical:bb.a
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.3, %.lr.ph21.i ], [ %indvars.iv23.i.unr, %.lr.ph21.i.prol.loopexit ] ; 6 uses
  %i.gb = sub nsw i64 %i.aw, %indvars.iv23.i
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gb
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !58
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv23.i
  store float %i.gd, ptr %i.ge, align 4, !tbaa !58
  %indvars.iv.next24.i = add nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.gf = sub nsw i64 %i.aw, %indvars.iv.next24.i
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !58
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv.next24.i
  store float %i.gh, ptr %i.gi, align 4, !tbaa !58
  %indvars.iv.next24.i.1 = add nsw i64 %indvars.iv23.i, 2 ; 2 uses
  %i.gj = sub nsw i64 %i.aw, %indvars.iv.next24.i.1
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !58
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv.next24.i.1
  store float %i.gl, ptr %i.gm, align 4, !tbaa !58
  %indvars.iv.next24.i.2 = add nsw i64 %indvars.iv23.i, 3 ; 2 uses
  %i.gn = sub nsw i64 %i.aw, %indvars.iv.next24.i.2
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !58
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv.next24.i.2
  store float %i.gp, ptr %i.gq, align 4, !tbaa !58
  %indvars.iv.next24.i.3 = add nsw i64 %indvars.iv23.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next24.i.3, %i.aw
  br i1 %exitcond.not.i.3, label %copy_rev.exit.loopexit, label %.lr.ph21.i, !llvm.loop !3

copy_rev.exit.loopexit:                           ; preds = %.lr.ph21.i, %.lr.ph21.i.prol.loopexit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge48, label %.preheader, !llvm.loop !98
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rdft_vertical(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4280
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = add nsw i32 %2, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4168
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  %i.m = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4440
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4248
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4376
  br label %bb.b

._crit_edge34:                                    ; preds = %._crit_edge, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph33, %._crit_edge
  %i.q = phi i32 [ %i.d, %.lr.ph33 ], [ %i.ah, %._crit_edge ]
  %indvars.iv36 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next37, %._crit_edge ] ; 6 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv36
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51
  %i.t = shl i64 %i.s, 32
  %i.u = ashr exact i64 %i.t, 32                  ; 2 uses
  %i.v = mul nsw i64 %i.u, %i.g
  %i.w = sdiv i64 %i.v, %i.h                      ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = mul nsw i64 %i.u, %i.j
  %i.z = sdiv i64 %i.y, %i.h
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp slt i32 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv36
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv36
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv36
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv36
  %sext = shl i64 %i.w, 32
  %i.ag = ashr exact i64 %sext, 32
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.c, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ah = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.q, %bb.b ] ; 2 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next37, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge34, !llvm.loop !103

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !65
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !51
  %i.ao = mul i64 %i.an, %indvars.iv              ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao
  tail call void %i.ak(ptr noundef %i.al, ptr noundef %i.ap, ptr noundef %i.ar, i64 noundef 4) #10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.aa
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !104
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @multiply_data(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4280
  %i.g = sext i32 %2 to i64
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = add nsw i32 %2, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4552
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4312
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4440
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4248
  %wide.trip.count53 = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge44:                                    ; preds = %._crit_edge40.split, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph43, %._crit_edge40.split
  %indvars.iv50 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next51, %._crit_edge40.split ] ; 6 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv50
  %i.p = load i64, ptr %i.o, align 8, !tbaa !51
  %i.q = shl i64 %i.p, 32
  %i.r = ashr exact i64 %i.q, 32                  ; 2 uses
  %i.s = mul nsw i64 %i.r, %i.g
  %i.t = sdiv i64 %i.s, %i.h                      ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = mul nsw i64 %i.r, %i.j
  %i.w = sdiv i64 %i.v, %i.h                      ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = icmp slt i32 %i.u, %i.x
  br i1 %i.y, label %.lr.ph39, label %._crit_edge40.split

.lr.ph39:                                         ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv50
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv50
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !51 ; 6 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv50
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv50
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !51
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %._crit_edge40.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph39
  %sext = shl i64 %i.t, 32
  %i.ah = ashr exact i64 %sext, 32
  %sext58 = shl i64 %i.w, 32
  %wide.trip.count = ashr exact i64 %sext58, 32
  %min.iters.check = icmp ult i64 %i.ac, 4
  %n.vec = and i64 %i.ac, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br label %.lr.ph

._crit_edge40.split:                              ; preds = %._crit_edge, %.lr.ph39, %bb.b
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge44, label %bb.b, !llvm.loop !106

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv46 = phi i64 [ %i.ah, %.lr.ph.preheader ], [ %indvars.iv.next47, %._crit_edge ] ; 3 uses
  %i.ai = mul i64 %i.ac, %indvars.iv46
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ai ; 2 uses
  %i.ak = mul i64 %i.ag, %indvars.iv46
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ak ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !50
  %wide.load59 = load <2 x double>, ptr %i.an, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %wide.load60 = load <2 x float>, ptr %i.ao, align 4, !tbaa !58
  %wide.load61 = load <2 x float>, ptr %i.ap, align 4, !tbaa !58
  %i.aq = fpext nsz <2 x float> %wide.load60 to <2 x double>
  %i.ar = fpext nsz <2 x float> %wide.load61 to <2 x double>
  %4 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load59, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <2 x double> %i.aq, <2 x double> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = fmul nsz <4 x double> %4, %5
  %7 = fptrunc nsz <4 x double> %6 to <4 x float>
  store <4 x float> %7, ptr %i.ao, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count
  br i1 %exitcond49.not, label %._crit_edge40.split, label %.lr.ph, !llvm.loop !108

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.au = load double, ptr %i.at, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !58
  %i.ax = fpext nsz float %i.aw to double
  %i.ay = fmul nsz double %i.au, %i.ax
  %i.az = fptrunc nsz double %i.ay to float
  store float %i.az, ptr %i.av, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !109
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @irdft_vertical(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4280
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = add nsw i32 %2, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4176
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 3128
  %i.m = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4376
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4248
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4440
  br label %bb.b

._crit_edge34:                                    ; preds = %._crit_edge, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph33, %._crit_edge
  %i.q = phi i32 [ %i.d, %.lr.ph33 ], [ %i.ah, %._crit_edge ]
  %indvars.iv36 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next37, %._crit_edge ] ; 6 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv36
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51
  %i.t = shl i64 %i.s, 32
  %i.u = ashr exact i64 %i.t, 32                  ; 2 uses
  %i.v = mul nsw i64 %i.u, %i.g
  %i.w = sdiv i64 %i.v, %i.h                      ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = mul nsw i64 %i.u, %i.j
  %i.z = sdiv i64 %i.y, %i.h
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp slt i32 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv36
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv36
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv36
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv36
  %sext = shl i64 %i.w, 32
  %i.ag = ashr exact i64 %sext, 32
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.c, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ah = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.q, %bb.b ] ; 2 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next37, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge34, !llvm.loop !110

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !112
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !65
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !51
  %i.ao = mul i64 %i.an, %indvars.iv              ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao
  tail call void %i.ak(ptr noundef %i.al, ptr noundef %i.ap, ptr noundef %i.ar, i64 noundef 8) #10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.aa
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !111
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_horizontal(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge43

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4280
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4216
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4248
  %i.i = sext i32 %2 to i64
  %i.j = sext i32 %3 to i64                       ; 2 uses
  %i.k = add nsw i32 %2, 1
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4344
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4376
  %wide.trip.count53 = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge43:                                    ; preds = %._crit_edge40.split, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %._crit_edge40.split
  %indvars.iv50 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next51, %._crit_edge40.split ] ; 7 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv50
  %i.q = load i64, ptr %i.p, align 8, !tbaa !51
  %i.r = shl i64 %i.q, 32
  %i.s = ashr exact i64 %i.r, 32                  ; 2 uses
  %i.t = mul nsw i64 %i.s, %i.i
  %i.u = sdiv i64 %i.t, %i.j                      ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = mul nsw i64 %i.s, %i.l
  %i.x = sdiv i64 %i.w, %i.j                      ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv50
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24  ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv50
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv50
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.af = icmp slt i32 %i.v, %i.y
  %i.ag = icmp sgt i32 %i.aa, 0
  %or.cond = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge40.split

.preheader.preheader:                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv50
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv50
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !51
  %i.al = shl i64 %i.ak, 32
  %i.am = ashr exact i64 %i.al, 32                ; 5 uses
  %sext = shl i64 %i.u, 32
  %i.an = ashr exact i64 %sext, 32
  %i.ao = shl i64 %i.ai, 32
  %i.ap = ashr exact i64 %i.ao, 32
  %sext58 = shl i64 %i.x, 32
  %wide.trip.count48 = ashr exact i64 %sext58, 32
  %wide.trip.count = zext nneg i32 %i.aa to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.aq = icmp ult i32 %i.aa, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod61 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ %i.an, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 3 uses
  %i.ar = mul nsw i64 %indvars.iv45, %i.ap
  %invariant.gep = getelementptr [4 x i8], ptr %i.ae, i64 %i.ar ; 5 uses
  %invariant.gep59 = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv45 ; 5 uses
  br i1 %i.aq, label %.epil.preheader, label %.preheader.new

._crit_edge40.split:                              ; preds = %._crit_edge, %bb.b
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge43, label %bb.b, !llvm.loop !113

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod61)
end_hunk_0
