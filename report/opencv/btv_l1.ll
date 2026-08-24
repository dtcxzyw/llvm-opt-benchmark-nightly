Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/btv_l1?download=true
inline.NumInlined: 783
inline.NumDeleted: 222
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK12_GLOBAL__N_121BtvRegularizationBodyIfEclERKN2cv5RangeE:bb.a
  br i1 %i.d, label %.lr.ph50, label %._crit_edge51.split

.lr.ph50:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i64, ptr %i.g, align 8, !tbaa !144  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.l = load i64, ptr %i.k, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.n = load i32, ptr %i.m, align 8, !tbaa !187  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !248
  %i.q = sub nsw i32 %i.p, %i.n                   ; 2 uses
  %i.r = icmp sge i32 %i.n, %i.q
  %.not37 = icmp slt i32 %i.n, 0
  %brmerge = or i1 %i.r, %.not37
  br i1 %brmerge, label %._crit_edge51.split, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %.lr.ph50
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.t = zext nneg i32 %i.n to i64                ; 2 uses
  %i.u = add nuw nsw i32 %i.n, 1
  %i.v = sext i32 %i.a to i64
  %wide.trip.count71 = sext i32 %i.c to i64
  %wide.trip.count66 = sext i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %i.u to i64
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !190
  br label %.lr.ph45

._crit_edge51.split:                              ; preds = %._crit_edge46, %.lr.ph50, %bb.a
  ret void

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %._crit_edge46
  %indvars.iv68 = phi i64 [ %i.v, %.lr.ph45.preheader ], [ %indvars.iv.next69, %._crit_edge46 ] ; 5 uses
  %i.x = mul i64 %i.h, %indvars.iv68
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.x
  %i.z = mul i64 %i.l, %indvars.iv68
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.z
  br label %.lr.ph41

._crit_edge46:                                    ; preds = %._crit_edge42
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count71
  br i1 %exitcond72.not, label %._crit_edge51.split, label %.lr.ph45, !llvm.loop !249

.lr.ph41:                                         ; preds = %.lr.ph45, %._crit_edge42
  %indvars.iv63 = phi i64 [ %i.t, %.lr.ph45 ], [ %indvars.iv.next64, %._crit_edge42 ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv63
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !123 ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv63 ; 2 uses
  %invariant.gep76 = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv63
  %.promoted78 = load float, ptr %i.ad, align 4, !tbaa !123
  br label %.lr.ph

._crit_edge42:                                    ; preds = %._crit_edge
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge46, label %.lr.ph41, !llvm.loop !250

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph41
  %.promoted79 = phi float [ %.promoted78, %.lr.ph41 ], [ %i.ba, %._crit_edge ]
  %indvars.iv59 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next60, %._crit_edge ] ; 4 uses
  %.03139 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next55, %._crit_edge ]
  %i.ae = sub nsw i64 %indvars.iv68, %indvars.iv59
  %i.af = mul i64 %i.h, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.af
  %i.ah = add nsw i64 %indvars.iv59, %indvars.iv68
  %i.ai = mul i64 %i.h, %i.ah
  %i.aj = xor i64 %indvars.iv59, -1
  %gep77 = getelementptr i8, ptr %invariant.gep76, i64 %i.ai
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge42, label %.lr.ph, !llvm.loop !251

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv54 = phi i64 [ %.03139, %.lr.ph ], [ %indvars.iv.next55, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ak = phi float [ %.promoted79, %.lr.ph ], [ %i.ba, %bb.b ]
  %i.al = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv54
  %i.am = load float, ptr %i.al, align 4, !tbaa !123
  %gep = getelementptr [4 x i8], ptr %gep77, i64 %indvars.iv
  %i.an = load float, ptr %gep, align 4, !tbaa !123 ; 2 uses
  %i.ao = fcmp ogt float %i.ac, %i.an
  %i.ap = fcmp olt float %i.ac, %i.an
  %i.aq = select i1 %i.ap, float -1.000000e+00, float 0.000000e+00
  %i.ar = select i1 %i.ao, float 1.000000e+00, float %i.aq
  %i.as = sub nsw i64 %indvars.iv63, %indvars.iv
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !123 ; 2 uses
  %i.av = fcmp ogt float %i.au, %i.ac
  %i.aw = fcmp olt float %i.au, %i.ac
  %i.ax = select i1 %i.aw, float -1.000000e+00, float 0.000000e+00
  %i.ay = select i1 %i.av, float 1.000000e+00, float %i.ax
  %i.az = fsub float %i.ar, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.am, float %i.az, float %i.ak) ; 3 uses
  store float %i.ba, ptr %i.ad, align 4, !tbaa !123
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.bb = icmp sgt i64 %indvars.iv.next, %i.aj
  br i1 %i.bb, label %bb.b, label %._crit_edge, !llvm.loop !252
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #26

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121BtvRegularizationBodyIN2cv7Point3_IfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(440) dereferenceable(440) initializes((0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_121BtvRegularizationBodyIN2cv7Point3_IfEEEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #31
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121BtvRegularizationBodyIN2cv7Point3_IfEEED0Ev(ptr noundef nonnull align 8 dereferenceable(440) initializes((0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_121BtvRegularizationBodyIN2cv7Point3_IfEEEE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #31, !inline_history !204
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #31, !inline_history !204
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(440) %0) #31, !inline_history !204
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK12_GLOBAL__N_121BtvRegularizationBodyIN2cv7Point3_IfEEEclERKNS1_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #27 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !191    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !193  ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph102, label %._crit_edge103.split

.lr.ph102:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i64, ptr %i.g, align 8, !tbaa !144  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.l = load i64, ptr %i.k, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.n = load i32, ptr %i.m, align 8, !tbaa !201  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !253
  %i.q = sub nsw i32 %i.p, %i.n                   ; 2 uses
  %i.r = icmp sge i32 %i.n, %i.q
  %.not89 = icmp slt i32 %i.n, 0
  %brmerge = or i1 %i.r, %.not89
  br i1 %brmerge, label %._crit_edge103.split, label %.lr.ph97.preheader

.lr.ph97.preheader:                               ; preds = %.lr.ph102
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.t = zext nneg i32 %i.n to i64                ; 2 uses
  %i.u = add nuw nsw i32 %i.n, 1
  %i.v = sext i32 %i.a to i64
  %wide.trip.count123 = sext i32 %i.c to i64
  %wide.trip.count118 = sext i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %i.u to i64
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !203
  br label %.lr.ph97

._crit_edge103.split:                             ; preds = %._crit_edge98, %.lr.ph102, %bb.a
  ret void

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %._crit_edge98
  %indvars.iv120 = phi i64 [ %i.v, %.lr.ph97.preheader ], [ %indvars.iv.next121, %._crit_edge98 ] ; 5 uses
  %i.x = mul i64 %i.h, %indvars.iv120
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.x
  %i.z = mul i64 %i.l, %indvars.iv120
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.z
  br label %.lr.ph93

._crit_edge98:                                    ; preds = %._crit_edge94
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge103.split, label %.lr.ph97, !llvm.loop !254

.lr.ph93:                                         ; preds = %.lr.ph97, %._crit_edge94
  %indvars.iv115 = phi i64 [ %i.t, %.lr.ph97 ], [ %indvars.iv.next116, %._crit_edge94 ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv115 ; 2 uses
  %.sroa.040.0.copyload = load <2 x float>, ptr %i.ab, align 4 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !123 ; 4 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %indvars.iv115 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %invariant.gep128 = getelementptr [12 x i8], ptr %i.f, i64 %indvars.iv115
  %i.ae = load <2 x float>, ptr %i.ac, align 4, !tbaa !123
  %.promoted133 = load float, ptr %i.ad, align 4, !tbaa !255
  br label %.lr.ph

._crit_edge94:                                    ; preds = %._crit_edge
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %._crit_edge98, label %.lr.ph93, !llvm.loop !257

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph93
  %.promoted88134 = phi float [ %.promoted133, %.lr.ph93 ], [ %i.bp, %._crit_edge ]
  %indvars.iv111 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next112, %._crit_edge ] ; 4 uses
  %.06190 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next, %._crit_edge ]
  %i.af = phi <2 x float> [ %i.ae, %.lr.ph93 ], [ %i.bo, %._crit_edge ]
  %i.ag = sub nsw i64 %indvars.iv120, %indvars.iv111
  %i.ah = mul i64 %i.h, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ah
  %i.aj = add nsw i64 %indvars.iv111, %indvars.iv120
  %i.ak = mul i64 %i.h, %i.aj
  %i.al = xor i64 %indvars.iv111, -1
  %gep129 = getelementptr i8, ptr %invariant.gep128, i64 %i.ak
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge94, label %.lr.ph, !llvm.loop !258

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv106 = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next107, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ %.06190, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.am = phi float [ %.promoted88134, %.lr.ph ], [ %i.bp, %bb.b ]
  %i.an = phi <2 x float> [ %i.af, %.lr.ph ], [ %i.bo, %bb.b ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !123 ; 2 uses
  %gep = getelementptr [12 x i8], ptr %gep129, i64 %indvars.iv106 ; 2 uses
  %.sroa.025.0.copyload = load <2 x float>, ptr %gep, align 4 ; 2 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 4, !tbaa !123 ; 2 uses
  %i.aq = fcmp ogt float %.sroa.5.0.copyload, %.sroa.226.0.copyload
  %i.ar = fcmp olt float %.sroa.5.0.copyload, %.sroa.226.0.copyload
  %i.as = select i1 %i.ar, float -1.000000e+00, float 0.000000e+00
  %i.at = select i1 %i.aq, float 1.000000e+00, float %i.as
  %i.au = sub nsw i64 %indvars.iv115, %indvars.iv106
  %i.av = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.au ; 2 uses
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.av, align 4 ; 2 uses
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.216.0.copyload = load float, ptr %.sroa.216.0..sroa_idx, align 4, !tbaa !123 ; 2 uses
  %i.aw = fcmp ogt float %.sroa.216.0.copyload, %.sroa.5.0.copyload
  %i.ax = fcmp olt float %.sroa.216.0.copyload, %.sroa.5.0.copyload
  %i.ay = select i1 %i.ax, float -1.000000e+00, float 0.000000e+00
  %i.az = select i1 %i.aw, float 1.000000e+00, float %i.ay
  %i.ba = fsub nnan float %i.at, %i.az
  %i.bb = fmul float %i.ap, %i.ba
  %i.bc = fcmp ogt <2 x float> %.sroa.040.0.copyload, %.sroa.025.0.copyload
  %i.bd = fcmp olt <2 x float> %.sroa.040.0.copyload, %.sroa.025.0.copyload
  %i.be = select <2 x i1> %i.bd, <2 x float> splat (float -1.000000e+00), <2 x float> zeroinitializer
  %i.bf = select <2 x i1> %i.bc, <2 x float> splat (float 1.000000e+00), <2 x float> %i.be
  %i.bg = fcmp ogt <2 x float> %.sroa.015.0.copyload, %.sroa.040.0.copyload
  %i.bh = fcmp olt <2 x float> %.sroa.015.0.copyload, %.sroa.040.0.copyload
  %i.bi = select <2 x i1> %i.bh, <2 x float> splat (float -1.000000e+00), <2 x float> zeroinitializer
  %i.bj = select <2 x i1> %i.bg, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bi
  %i.bk = fsub nnan <2 x float> %i.bf, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bm, %i.bk
  %i.bo = fadd <2 x float> %i.an, %i.bn           ; 3 uses
  store <2 x float> %i.bo, ptr %i.ac, align 4, !tbaa !123
  %i.bp = fadd float %i.bb, %i.am                 ; 3 uses
  store float %i.bp, ptr %i.ad, align 4, !tbaa !255
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, -1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = icmp sgt i64 %indvars.iv.next107, %i.al
  br i1 %i.bq, label %bb.b, label %._crit_edge, !llvm.loop !259
}

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #11

declare void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #11

declare void @_ZN2cv8superres7arrCopyERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { cold inlinehint noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11}
!9 = distinct !{!9, !10, !"_ZSt11make_sharedIN12_GLOBAL__N_15BTVL1EJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!10 = distinct !{!10, !"_ZSt11make_sharedIN12_GLOBAL__N_15BTVL1EJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!11 = distinct !{!11, !12, !"_ZN2cvL7makePtrIN12_GLOBAL__N_15BTVL1EJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!12 = distinct !{!12, !"_ZN2cvL7makePtrIN12_GLOBAL__N_15BTVL1EJEEENS_3PtrIT_EEDpRKT0_"}
!13 = !{!14, !5, i64 8}
!14 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!15 = !{!14, !5, i64 12}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !7, i64 0}
!18 = !{!19, !5, i64 44}
!19 = !{!"_ZTSN12_GLOBAL__N_110BTVL1_BaseE", !20, i64 0, !5, i64 44, !5, i64 48, !31, i64 56, !31, i64 64, !31, i64 72, !5, i64 80, !5, i64 84, !31, i64 88, !5, i64 96, !32, i64 104, !5, i64 120, !31, i64 128, !5, i64 136, !36, i64 144, !41, i64 168, !5, i64 352, !31, i64 360, !49, i64 368, !49, i64 392, !49, i64 416, !49, i64 440, !49, i64 464, !49, i64 488, !54, i64 512, !54, i64 720, !54, i64 928, !54, i64 1136, !54, i64 1344, !54, i64 1552}
!20 = !{!"_ZTSN2cv8superres15SuperResolutionE", !21, i64 0, !22, i64 8, !23, i64 16, !24, i64 24, !23, i64 40}
!21 = !{!"_ZTSN2cv9AlgorithmE"}
!22 = !{!"_ZTSN2cv8superres11FrameSourceE"}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTSN2cv3PtrINS_8superres11FrameSourceEEE", !25, i64 0}
!25 = !{!"_ZTSSt10shared_ptrIN2cv8superres11FrameSourceEE", !26, i64 0}
!26 = !{!"_ZTSSt12__shared_ptrIN2cv8superres11FrameSourceELN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0, !29, i64 8}
!27 = !{!"p1 _ZTSN2cv8superres11FrameSourceE", !28, i64 0}
!28 = !{!"any pointer", !6, i64 0}
!29 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0}
!30 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0}
!31 = !{!"double", !6, i64 0}
!32 = !{!"_ZTSN2cv3PtrINS_8superres19DenseOpticalFlowExtEEE", !33, i64 0}
!33 = !{!"_ZTSSt10shared_ptrIN2cv8superres19DenseOpticalFlowExtEE", !34, i64 0}
!34 = !{!"_ZTSSt12__shared_ptrIN2cv8superres19DenseOpticalFlowExtELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !29, i64 8}
!35 = !{!"p1 _ZTSN2cv8superres19DenseOpticalFlowExtE", !28, i64 0}
!36 = !{!"_ZTSSt6vectorIfSaIfEE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 float", !28, i64 0}
!41 = !{!"_ZTSN2cv4UMatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !42, i64 16, !43, i64 24, !44, i64 32, !45, i64 40, !46, i64 48, !48, i64 104}
!42 = !{!"p1 _ZTSN2cv12MatAllocatorE", !28, i64 0}
!43 = !{!"_ZTSN2cv14UMatUsageFlagsE", !6, i64 0}
!44 = !{!"p1 _ZTSN2cv8UMatDataE", !28, i64 0}
!45 = !{!"long", !6, i64 0}
!46 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !47, i64 4, !5, i64 8, !6, i64 12}
!47 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!48 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!49 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p1 _ZTSN2cv3MatE", !28, i64 0}
!54 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !42, i64 56, !44, i64 64, !46, i64 72, !48, i64 128}
!55 = !{!"p1 omnipotent char", !28, i64 0}
!56 = !{!19, !5, i64 48}
!57 = !{!31, !31, i64 0}
!58 = !{!19, !31, i64 72}
!59 = !{!19, !5, i64 80}
!60 = !{!19, !5, i64 84}
!61 = !{!19, !31, i64 88}
!62 = !{!19, !5, i64 96}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSSt12__shared_ptrIN2cv8superres20FarnebackOpticalFlowELN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0, !29, i64 8}
!65 = !{!"p1 _ZTSN2cv8superres20FarnebackOpticalFlowE", !28, i64 0}
!66 = !{!34, !35, i64 0}
!67 = !{!29, !30, i64 0}
!68 = !{!6, !6, i64 0}
!69 = !{!5, !5, i64 0}
!70 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, null}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null}
!73 = !{!39, !40, i64 0}
!74 = !{!39, !40, i64 16}
!75 = !{!19, !5, i64 120}
!76 = !{!19, !31, i64 128}
!77 = !{!19, !5, i64 136}
!78 = !{!19, !5, i64 352}
!79 = !{!19, !31, i64 360}
!80 = !{!81, !5, i64 1764}
!81 = !{!"_ZTSN12_GLOBAL__N_15BTVL1E", !19, i64 0, !5, i64 1760, !5, i64 1764, !5, i64 1768, !54, i64 1776, !54, i64 1984, !49, i64 2192, !49, i64 2216, !49, i64 2240, !49, i64 2264, !49, i64 2288, !49, i64 2312, !49, i64 2336, !54, i64 2360}
!82 = !{!81, !5, i64 1768}
!83 = !{!81, !5, i64 1760}
!84 = !{!85, !86, i64 0}
!85 = !{!"_ZTSSt12__shared_ptrIN2cv8superres15SuperResolutionELN9__gnu_cxx12_Lock_policyE2EE", !86, i64 0, !29, i64 8}
!86 = !{!"p1 _ZTSN2cv8superres15SuperResolutionE", !28, i64 0}
!87 = distinct !{null}
!88 = !{!89, !55, i64 8}
!89 = !{!"_ZTSSt9type_info", !55, i64 8}
!90 = !{!52, !53, i64 0}
!91 = !{!52, !53, i64 8}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!52, !53, i64 16}
!95 = !{!19, !31, i64 56}
!96 = !{!19, !31, i64 64}
!97 = !{!28, !28, i64 0}
!98 = distinct !{null, null, null, null, null}
!99 = distinct !{!99, !93}
!100 = distinct !{!100, !93}
!101 = !{!102, !5, i64 0}
!102 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !28, i64 8, !103, i64 16}
!103 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!104 = !{!102, !28, i64 8}
!105 = !{!103, !5, i64 0}
!106 = !{!103, !5, i64 4}
!107 = !{!108, !5, i64 8}
!108 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !109, i64 0, !5, i64 8}
!109 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !28, i64 0}
!110 = distinct !{null, null}
!111 = distinct !{null, null, null}
!112 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv8superres19DenseOpticalFlowExtELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!113 = distinct !{ptr @_ZN2cv8superres15SuperResolutionD2Ev, null, null, null}
!114 = !{!26, !27, i64 0}
!115 = distinct !{!115, !93, !116}
!116 = !{!"llvm.loop.peeled.count", i32 1}
!117 = !{!118, !55, i64 0}
!118 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !119, i64 0, !45, i64 8, !6, i64 16}
!119 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !55, i64 0}
!120 = !{!54, !5, i64 0}
!121 = !{!40, !40, i64 0}
!122 = !{!39, !40, i64 8}
!123 = !{!124, !124, i64 0}
!124 = !{!"float", !6, i64 0}
!125 = distinct !{!125, !93}
!126 = distinct !{!126, !93}
!127 = !{!46, !5, i64 0}
!128 = distinct !{!128, !93}
!129 = distinct !{!129, !93}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!132 = distinct !{!132, !"_ZNK2cv11_InputArray6getMatEi"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!135 = distinct !{!135, !"_ZNK2cv11_InputArray6getMatEi"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!138 = distinct !{!138, !"_ZNK2cv11_InputArray6getMatEi"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!141 = distinct !{!141, !"_ZNK2cv11_InputArray6getMatEi"}
!142 = !{!54, !5, i64 8}
!143 = !{!54, !55, i64 24}
!144 = !{!45, !45, i64 0}
!145 = distinct !{!145, !93, !146}
!146 = !{!"llvm.loop.unswitch.partial.disable"}
!147 = !{!54, !5, i64 12}
!148 = distinct !{!148, !93}
!149 = distinct !{!149, !93}
!150 = !{!19, !5, i64 524}
!151 = !{!19, !5, i64 520}
!152 = !{!153, !5, i64 0}
!153 = !{!"_ZTSN2cv5Rect_IiEE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!154 = !{!153, !5, i64 4}
!155 = !{!153, !5, i64 8}
!156 = !{!153, !5, i64 12}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!159 = distinct !{!159, !"_ZNK2cv11_InputArray6getMatEi"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!162 = distinct !{!162, !"_ZNK2cv11_InputArray6getMatEi"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!165 = distinct !{!165, !"_ZNK2cv11_InputArray6getMatEi"}
!166 = !{!167}
!167 = distinct !{!167, !168}
!168 = distinct !{!168, !"LVerDomain"}
!169 = !{!170}
!170 = distinct !{!170, !168}
!171 = !{!172}
!172 = distinct !{!172, !168}
!173 = !{!167, !170}
!174 = distinct !{!174, !93, !175, !176}
!175 = !{!"llvm.loop.isvectorized", i32 1}
!176 = !{!"llvm.loop.unroll.runtime.disable"}
!177 = distinct !{!177, !93}
!178 = distinct !{!178, !93, !175}
!179 = distinct !{null}
!180 = distinct !{!180, !93}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!183 = distinct !{!183, !"_ZNK2cv11_InputArray6getMatEi"}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!186 = distinct !{!186, !"_ZNK2cv11_InputArray6getMatEi"}
!187 = !{!188, !5, i64 424}
!188 = !{!"_ZTSN12_GLOBAL__N_121BtvRegularizationBodyIfEE", !189, i64 0, !54, i64 8, !54, i64 216, !5, i64 424, !40, i64 432}
!189 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!190 = !{!188, !40, i64 432}
!191 = !{!192, !5, i64 0}
!192 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!193 = !{!192, !5, i64 4}
!194 = !{ptr @_ZN12_GLOBAL__N_121BtvRegularizationBodyIfED2Ev}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!197 = distinct !{!197, !"_ZNK2cv11_InputArray6getMatEi"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!200 = distinct !{!200, !"_ZNK2cv11_InputArray6getMatEi"}
!201 = !{!202, !5, i64 424}
!202 = !{!"_ZTSN12_GLOBAL__N_121BtvRegularizationBodyIN2cv7Point3_IfEEEE", !189, i64 0, !54, i64 8, !54, i64 216, !5, i64 424, !40, i64 432}
!203 = !{!202, !40, i64 432}
!204 = !{ptr @_ZN12_GLOBAL__N_121BtvRegularizationBodyIN2cv7Point3_IfEEED2Ev}
!205 = distinct !{!205, !93}
!206 = distinct !{!206, !93}
!207 = distinct !{!207, !93}
!208 = !{!119, !55, i64 0}
!209 = !{!118, !45, i64 8}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!212 = distinct !{!212, !"_ZN2cv7Scalar_IdE3allEd"}
!213 = distinct !{!213, !93}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!216 = distinct !{!216, !"_ZNK2cv11_InputArray6getMatEi"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!219 = distinct !{!219, !"_ZNK2cv11_InputArray6getMatEi"}
!220 = !{!221}
!221 = distinct !{!221, !222}
!222 = distinct !{!222, !"LVerDomain"}
!223 = !{!224}
!224 = distinct !{!224, !222}
!225 = distinct !{!225, !93, !175, !176}
!226 = distinct !{!226, !227}
!227 = !{!"llvm.loop.unroll.disable"}
!228 = distinct !{!228, !93}
!229 = distinct !{!229, !93, !175}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!232 = distinct !{!232, !"_ZNK2cv11_InputArray6getMatEi"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!235 = distinct !{!235, !"_ZNK2cv11_InputArray6getMatEi"}
!236 = distinct !{!236, !93, !146}
!237 = !{i64 0, i64 4, !123, i64 4, i64 4, !123, i64 8, i64 4, !123}
!238 = distinct !{!238, !93}
!239 = !{!240}
!240 = distinct !{!240, !241, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!241 = distinct !{!241, !"_ZNK2cv11_InputArray6getMatEi"}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!244 = distinct !{!244, !"_ZNK2cv11_InputArray6getMatEi"}
!245 = distinct !{!245, !93, !146}
!246 = !{i64 0, i64 16, !68}
!247 = distinct !{!247, !93}
!248 = !{!188, !5, i64 20}
!249 = distinct !{!249, !93}
!250 = distinct !{!250, !93}
!251 = distinct !{!251, !93}
!252 = distinct !{!252, !93}
!253 = !{!202, !5, i64 20}
!254 = distinct !{!254, !93}
!255 = !{!256, !124, i64 8}
!256 = !{!"_ZTSN2cv7Point3_IfEE", !124, i64 0, !124, i64 4, !124, i64 8}
!257 = distinct !{!257, !93}
!258 = distinct !{!258, !93}
!259 = distinct !{!259, !93}
end_hunk_0
