inline.NumInlined: 22
inline.NumDeleted: 1
begin_hunk_0_@begin:bb.a
  store <4 x float> %i.atr, ptr %i.ats, align 16, !tbaa !21
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.att = shl nuw nsw i64 %index.next, 3
  %i.atu = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.att
  %wide.vec.1 = load <8 x float>, ptr %i.atu, align 16, !tbaa !21 ; 3 uses
  %strided.vec.1 = shufflevector <8 x float> %wide.vec.1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.atv = fmul <8 x float> %wide.vec.1, %wide.vec.1
  %i.atw = shufflevector <8 x float> %i.atv, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.atx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec.1, <4 x float> %strided.vec.1, <4 x float> %i.atw)
  %i.aty = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.atx)
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index.next
  store <4 x float> %i.aty, ptr %i.atz, align 16, !tbaa !21
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.aua = icmp eq i64 %index.next.1, 512
  br i1 %i.aua, label %Magnitude.exit, label %vector.body, !llvm.loop !45

bb.as:                                            ; preds = %.preheader110, %BeamFirFilter.exit97
  %indvars.iv219 = phi i64 [ 0, %.preheader110 ], [ %indvars.iv.next220, %BeamFirFilter.exit97 ] ; 2 uses
  %i.aub = phi i32 [ %.promoted144, %.preheader110 ], [ %i.avl, %BeamFirFilter.exit97 ] ; 2 uses
  %i.auc = phi i32 [ %.promoted146, %.preheader110 ], [ %i.avk, %BeamFirFilter.exit97 ]
  %i.aud = shl nuw nsw i64 %indvars.iv219, 1      ; 2 uses
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aud
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aud
  %i.aug = sub nsw i32 %i.ata, %i.aub
  %i.auh = shl nsw i32 %i.aug, 1                  ; 2 uses
  %i.aui = sext i32 %i.auh to i64
  %i.auj = getelementptr inbounds [4 x i8], ptr %i.atf, i64 %i.aui
  %i.auk = load <2 x float>, ptr %i.aue, align 8, !tbaa !21
  store <2 x float> %i.auk, ptr %i.auj, align 4, !tbaa !21
  br i1 %i.atg, label %._crit_edge.i86, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.as
  %i.aul = load ptr, ptr %i.ati, align 16, !tbaa !19
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i91
  %indvars.iv.i92 = phi i64 [ 0, %.lr.ph.i91 ], [ %indvars.iv.next.i96, %bb.at ] ; 2 uses
  %.05556.i95 = phi i32 [ %i.auh, %.lr.ph.i91 ], [ %i.avd, %bb.at ] ; 2 uses
  %i.aum = phi <2 x float> [ zeroinitializer, %.lr.ph.i91 ], [ %i.avb, %bb.at ]
  %i.aun = sext i32 %.05556.i95 to i64
  %i.auo = getelementptr inbounds [4 x i8], ptr %i.atf, i64 %i.aun
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.aul, i64 %indvars.iv.i92 ; 2 uses
  %i.auq = load float, ptr %i.aup, align 4, !tbaa !21
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aup, i64 4
  %i.aus = load float, ptr %i.aur, align 4, !tbaa !21
  %i.aut = load <2 x float>, ptr %i.auo, align 4, !tbaa !21 ; 2 uses
  %i.auu = insertelement <2 x float> poison, float %i.aus, i64 0
  %i.auv = shufflevector <2 x float> %i.aut, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.auw = shufflevector <2 x float> %i.auu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aux = fmul <2 x float> %i.auv, %i.auw
  %i.auy = insertelement <2 x float> poison, float %i.auq, i64 0
  %i.auz = shufflevector <2 x float> %i.auy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ava = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aut, <2 x float> %i.auz, <2 x float> %i.aux)
  %i.avb = fadd <2 x float> %i.aum, %i.ava        ; 2 uses
  %i.avc = add nsw i32 %.05556.i95, 2
  %i.avd = and i32 %i.avc, %i.atc
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i92, 2 ; 2 uses
  %i.ave = icmp slt i64 %indvars.iv.next.i96, %i.atj
  br i1 %i.ave, label %bb.at, label %._crit_edge.i86, !llvm.loop !39

._crit_edge.i86:                                  ; preds = %bb.at, %bb.as
  %i.avf = phi <2 x float> [ zeroinitializer, %bb.as ], [ %i.avb, %bb.at ]
  %i.avg = add nsw i32 %i.aub, 1
  %i.avh = and i32 %i.avg, %i.ata
  store <2 x float> %i.avf, ptr %i.auf, align 8, !tbaa !21
  %i.avi = add nsw i32 %i.auc, 1                  ; 2 uses
  %i.avj = icmp ne i32 %i.avi, 512                ; 3 uses
  %brmerge163 = or i1 %i.avj, %i.atg
  %.mux164 = select i1 %i.avj, i32 %i.avi, i32 0
  %.mux165 = select i1 %i.avj, i32 %i.avh, i32 0
  br i1 %brmerge163, label %BeamFirFilter.exit97, label %.lr.ph63.preheader.i89

.lr.ph63.preheader.i89:                           ; preds = %._crit_edge.i86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.atf, i8 0, i64 %i.atl, i1 false), !tbaa !21
  br label %BeamFirFilter.exit97

BeamFirFilter.exit97:                             ; preds = %._crit_edge.i86, %.lr.ph63.preheader.i89
  %i.avk = phi i32 [ %.mux164, %._crit_edge.i86 ], [ 0, %.lr.ph63.preheader.i89 ] ; 2 uses
  %i.avl = phi i32 [ %.mux165, %._crit_edge.i86 ], [ 0, %.lr.ph63.preheader.i89 ] ; 2 uses
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next220, 512
  br i1 %exitcond222.not, label %.lr.ph.i98.preheader, label %bb.as, !llvm.loop !46

Magnitude.exit:                                   ; preds = %vector.body
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %scevgep, ptr noundef nonnull align 16 dereferenceable(2048) %i.h, i64 2048, i1 false), !tbaa !21
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond224.not = icmp eq i64 %indvar.next, 4
  br i1 %exitcond224.not, label %.preheader, label %.preheader111, !llvm.loop !47

.preheader:                                       ; preds = %Magnitude.exit, %check_FP.exit.3
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %check_FP.exit.3 ], [ 0, %Magnitude.exit ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv229 ; 4 uses
  %invariant.gep150 = getelementptr inbounds nuw [4 x i8], ptr @detector_out_StrictFP, i64 %indvars.iv229 ; 4 uses
  %i.avm = load float, ptr %invariant.gep, align 4, !tbaa !21 ; 2 uses
  %i.avn = load float, ptr %invariant.gep150, align 4, !tbaa !21 ; 3 uses
  %i.avo = fsub float %i.avm, %i.avn
  %i.avp = tail call float @llvm.fabs.f32(float %i.avo)
  %i.avq = fpext float %i.avp to double
  %i.avr = fcmp ogt double %i.avq, 1.000000e-05
  br i1 %i.avr, label %bb.au, label %check_FP.exit

bb.au:                                            ; preds = %check_FP.exit.2, %check_FP.exit.1, %check_FP.exit, %.preheader
  %.lcssa180 = phi float [ %i.avm, %.preheader ], [ %i.avy, %check_FP.exit ], [ %i.awg, %check_FP.exit.1 ], [ %i.awo, %check_FP.exit.2 ]
  %.lcssa178 = phi float [ %i.avn, %.preheader ], [ %i.avz, %check_FP.exit ], [ %i.awh, %check_FP.exit.1 ], [ %i.awp, %check_FP.exit.2 ]
  %i.avs = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.avt = fpext float %.lcssa180 to double
  %i.avu = fpext float %.lcssa178 to double
  %i.avv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.avs, ptr noundef nonnull @.str.2, double noundef %i.avt, double noundef %i.avu, double noundef 1.000000e-05) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

check_FP.exit:                                    ; preds = %.preheader
  %i.avw = fpext float %i.avn to double
  %i.avx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.avw) ; 0 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2048
  %i.avy = load float, ptr %gep.1, align 4, !tbaa !21 ; 2 uses
  %gep151.1 = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 2048
  %i.avz = load float, ptr %gep151.1, align 4, !tbaa !21 ; 3 uses
  %i.awa = fsub float %i.avy, %i.avz
  %i.awb = tail call float @llvm.fabs.f32(float %i.awa)
  %i.awc = fpext float %i.awb to double
  %i.awd = fcmp ogt double %i.awc, 1.000000e-05
  br i1 %i.awd, label %bb.au, label %check_FP.exit.1

check_FP.exit.1:                                  ; preds = %check_FP.exit
  %i.awe = fpext float %i.avz to double
  %i.awf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.awe) ; 0 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4096
  %i.awg = load float, ptr %gep.2, align 4, !tbaa !21 ; 2 uses
  %gep151.2 = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 4096
  %i.awh = load float, ptr %gep151.2, align 4, !tbaa !21 ; 3 uses
  %i.awi = fsub float %i.awg, %i.awh
  %i.awj = tail call float @llvm.fabs.f32(float %i.awi)
  %i.awk = fpext float %i.awj to double
  %i.awl = fcmp ogt double %i.awk, 1.000000e-05
  br i1 %i.awl, label %bb.au, label %check_FP.exit.2

check_FP.exit.2:                                  ; preds = %check_FP.exit.1
  %i.awm = fpext float %i.awh to double
  %i.awn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.awm) ; 0 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 6144
  %i.awo = load float, ptr %gep.3, align 4, !tbaa !21 ; 2 uses
  %gep151.3 = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 6144
  %i.awp = load float, ptr %gep151.3, align 4, !tbaa !21 ; 3 uses
  %i.awq = fsub float %i.awo, %i.awp
  %i.awr = tail call float @llvm.fabs.f32(float %i.awq)
  %i.aws = fpext float %i.awr to double
  %i.awt = fcmp ogt double %i.aws, 1.000000e-05
  br i1 %i.awt, label %bb.au, label %check_FP.exit.3

check_FP.exit.3:                                  ; preds = %check_FP.exit.2
  %i.awu = fpext float %i.awp to double
  %i.awv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.awu) ; 0 uses
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next230, 512
  br i1 %exitcond232.not, label %.loopexit, label %.preheader, !llvm.loop !50

bb.av:                                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @BeamFirSetup(ptr noundef writeonly captures(none) initializes((0, 12), (16, 32)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !18
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !19
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.d) #20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.e, align 4, !tbaa !21
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 4
  %i.k = shl nuw i32 %1, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 2)
  %2 = add nsw i32 %smax, -2
  %i.l = zext nneg i32 %2 to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %3 = or disjoint i64 %i.m, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.j, i8 0, i64 %3, i1 false), !tbaa !21
  %scevgep17 = getelementptr i8, ptr %i.g, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep17, i8 0, i64 %3, i1 false), !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BeamFormWeights(i32 noundef %0, ptr noundef writeonly captures(none) initializes((0, 96)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  br i1 %i.a, label %.thread15, label %bb.b

.thread15:                                        ; preds = %bb.a
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %1, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !21
  br label %.thread17

bb.b:                                             ; preds = %bb.a
  store <2 x float> zeroinitializer, ptr %1, align 4, !tbaa !21
  %i.d = icmp eq i32 %0, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.d, label %.thread14, label %bb.c

.thread14:                                        ; preds = %bb.b
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !21
  br label %.thread17

bb.c:                                             ; preds = %bb.b
  store <2 x float> zeroinitializer, ptr %i.e, align 4, !tbaa !21
  %i.f = icmp eq i32 %0, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.f, label %.thread16, label %bb.d

.thread16:                                        ; preds = %bb.c
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.g, align 4, !tbaa !21
  br label %.thread20

.thread17:                                        ; preds = %.thread14, %.thread15
  store <2 x float> zeroinitializer, ptr %i.b, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !21
  br label %.thread20

bb.d:                                             ; preds = %bb.c
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !21
  %i.i = icmp eq i32 %0, 3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.i, label %.thread18, label %bb.e

.thread18:                                        ; preds = %bb.d
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 4, !tbaa !21
  br label %.thread23

.thread20:                                        ; preds = %.thread16, %.thread17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x float> zeroinitializer, ptr %i.k, align 4, !tbaa !21
  br label %.thread23

bb.e:                                             ; preds = %bb.d
  store <2 x float> zeroinitializer, ptr %i.j, align 4, !tbaa !21
  %i.l = icmp eq i32 %0, 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.l, label %.thread21, label %bb.f

.thread21:                                        ; preds = %bb.e
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.m, align 4, !tbaa !21
  br label %.thread26

.thread23:                                        ; preds = %.thread18, %.thread20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <2 x float> zeroinitializer, ptr %i.n, align 4, !tbaa !21
  br label %.thread26

bb.f:                                             ; preds = %bb.e
  store <2 x float> zeroinitializer, ptr %i.m, align 4, !tbaa !21
  %i.o = icmp eq i32 %0, 5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %i.o, label %.thread24, label %bb.g

.thread24:                                        ; preds = %bb.f
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.p, align 4, !tbaa !21
  br label %.thread29

.thread26:                                        ; preds = %.thread21, %.thread23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x float> zeroinitializer, ptr %i.q, align 4, !tbaa !21
  br label %.thread29

bb.g:                                             ; preds = %bb.f
  store <2 x float> zeroinitializer, ptr %i.p, align 4, !tbaa !21
  %i.r = icmp eq i32 %0, 6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br i1 %i.r, label %.thread27, label %bb.h

.thread27:                                        ; preds = %bb.g
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.s, align 4, !tbaa !21
  br label %.thread32

.thread29:                                        ; preds = %.thread24, %.thread26
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x float> zeroinitializer, ptr %i.t, align 4, !tbaa !21
  br label %.thread32

bb.h:                                             ; preds = %bb.g
  store <2 x float> zeroinitializer, ptr %i.s, align 4, !tbaa !21
  %i.u = icmp eq i32 %0, 7
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %i.u, label %.thread30, label %bb.i

.thread30:                                        ; preds = %bb.h
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.v, align 4, !tbaa !21
  br label %.thread35

.thread32:                                        ; preds = %.thread27, %.thread29
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  store <2 x float> zeroinitializer, ptr %i.w, align 4, !tbaa !21
  br label %.thread35

bb.i:                                             ; preds = %bb.h
  store <2 x float> zeroinitializer, ptr %i.v, align 4, !tbaa !21
  %i.x = icmp eq i32 %0, 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br i1 %i.x, label %.thread33, label %bb.j

.thread33:                                        ; preds = %bb.i
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.y, align 4, !tbaa !21
  br label %.thread38

.thread35:                                        ; preds = %.thread30, %.thread32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <2 x float> zeroinitializer, ptr %i.z, align 4, !tbaa !21
  br label %.thread38

bb.j:                                             ; preds = %bb.i
  store <2 x float> zeroinitializer, ptr %i.y, align 4, !tbaa !21
  %i.aa = icmp eq i32 %0, 9
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br i1 %i.aa, label %.thread36, label %bb.k

.thread36:                                        ; preds = %bb.j
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ab, align 4, !tbaa !21
  br label %.thread41

.thread38:                                        ; preds = %.thread33, %.thread35
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  store <2 x float> zeroinitializer, ptr %i.ac, align 4, !tbaa !21
  br label %.thread41

bb.k:                                             ; preds = %bb.j
  store <2 x float> zeroinitializer, ptr %i.ab, align 4, !tbaa !21
  %i.ad = icmp eq i32 %0, 10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br i1 %i.ad, label %.thread39, label %bb.l

.thread39:                                        ; preds = %bb.k
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ae, align 4, !tbaa !21
  br label %bb.n

.thread41:                                        ; preds = %.thread36, %.thread38
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x float> zeroinitializer, ptr %i.af, align 4, !tbaa !21
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  store <2 x float> zeroinitializer, ptr %i.ae, align 4, !tbaa !21
  %i.ag = icmp eq i32 %0, 11
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.thread39, %.thread41, %bb.m
  %.sink = phi float [ 1.000000e+00, %bb.m ], [ 0.000000e+00, %.thread41 ], [ 0.000000e+00, %.thread39 ], [ 0.000000e+00, %bb.l ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %.sink, ptr %i.ah, align 4, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float 0.000000e+00, ptr %i.ai, align 4, !tbaa !21
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(argmem: write, errnomem: write) uwtable
define dso_local void @InputGenerate(i32 noundef %0, ptr noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %0, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %wide.trip.count28 = zext nneg i32 %2 to i64    ; 3 uses
  br i1 %i.b, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count28, 1
  %i.d = icmp eq i32 %2, 1
  br i1 %i.d, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
end_hunk_0
begin_hunk_1_@Magnitude:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = shl nuw nsw i64 %index, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %wide.vec = load <8 x float>, ptr %i.e, align 4, !tbaa !21, !alias.scope !51 ; 3 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.f = fmul <8 x float> %wide.vec, %wide.vec
  %i.g = shufflevector <8 x float> %i.f, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.h = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec, <4 x float> %i.g)
  %i.i = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.h)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  store <4 x float> %i.i, ptr %i.j, align 4, !tbaa !21, !alias.scope !54, !noalias !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader16
  %.idx.prol = shl nuw nsw i64 %indvars.iv.ph, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !21 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !21 ; 2 uses
  %i.p = fmul float %i.o, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.p)
  %sqrt.prol = tail call float @llvm.sqrt.f32(float %i.q)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  store float %sqrt.prol, ptr %i.r, align 4, !tbaa !21
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader16
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader16 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.s = add nsw i64 %wide.trip.count, -1
  %i.t = icmp eq i64 %indvars.iv.ph, %i.s
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !21 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !21 ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.y)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.z)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %sqrt, ptr %i.aa, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !21 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !21 ; 2 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.af)
  %sqrt.1 = tail call float @llvm.sqrt.f32(float %i.ag)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store float %sqrt.1, ptr %i.ah, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Detector(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #10 {
vector.memcheck:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %diff.check = icmp ult i64 %i.c, 32
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x float>, ptr %i.d, align 4, !tbaa !21
  %wide.load18 = load <4 x float>, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x float> %wide.load, ptr %i.f, align 4, !tbaa !21
  store <4 x float> %wide.load18, ptr %i.g, align 4, !tbaa !21
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load.1 = load <4 x float>, ptr %i.h, align 4, !tbaa !21
  %wide.load18.1 = load <4 x float>, ptr %i.i, align 4, !tbaa !21
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x float> %wide.load.1, ptr %i.j, align 4, !tbaa !21
  store <4 x float> %wide.load18.1, ptr %i.k, align 4, !tbaa !21
  %index.next.1 = or disjoint i64 %index, 16      ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next.1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load.2 = load <4 x float>, ptr %i.l, align 4, !tbaa !21
  %wide.load18.2 = load <4 x float>, ptr %i.m, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next.1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> %wide.load.2, ptr %i.n, align 4, !tbaa !21
  store <4 x float> %wide.load18.2, ptr %i.o, align 4, !tbaa !21
  %index.next.2 = or disjoint i64 %index, 24      ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index.next.2 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load.3 = load <4 x float>, ptr %i.p, align 4, !tbaa !21
  %wide.load18.3 = load <4 x float>, ptr %i.q, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index.next.2 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x float> %wide.load.3, ptr %i.r, align 4, !tbaa !21
  store <4 x float> %wide.load18.3, ptr %i.s, align 4, !tbaa !21
  %index.next.3 = add nuw nsw i64 %index, 32      ; 2 uses
  %i.t = icmp eq i64 %index.next.3, 512
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !58

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4, !tbaa !21
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.v, ptr %i.w, align 4, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.y = load float, ptr %i.x, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.y, ptr %i.z, align 4, !tbaa !21
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !21
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  store float %i.ab, ptr %i.ac, align 4, !tbaa !21
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  store float %i.ae, ptr %i.af, align 4, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 512
  br i1 %exitcond.not.3, label %middle.block, label %scalar.ph, !llvm.loop !59

middle.block:                                     ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @BeamFirSetup_StrictFP(ptr noundef writeonly captures(none) initializes((0, 12), (16, 32)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !18
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !19
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.d) #20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.e, align 4, !tbaa !21
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 4
  %i.k = shl nuw i32 %1, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 2)
  %2 = add nsw i32 %smax, -2
  %i.l = zext nneg i32 %2 to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %3 = or disjoint i64 %i.m, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.j, i8 0, i64 %3, i1 false), !tbaa !21
  %scevgep17 = getelementptr i8, ptr %i.g, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep17, i8 0, i64 %3, i1 false), !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BeamFormWeights_StrictFP(i32 noundef %0, ptr noundef writeonly captures(none) initializes((0, 96)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  br i1 %i.a, label %.thread15, label %bb.b

.thread15:                                        ; preds = %bb.a
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %1, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !21
  br label %.thread17

bb.b:                                             ; preds = %bb.a
  store <2 x float> zeroinitializer, ptr %1, align 4, !tbaa !21
  %i.d = icmp eq i32 %0, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.d, label %.thread14, label %bb.c

.thread14:                                        ; preds = %bb.b
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !21
  br label %.thread17

bb.c:                                             ; preds = %bb.b
  store <2 x float> zeroinitializer, ptr %i.e, align 4, !tbaa !21
  %i.f = icmp eq i32 %0, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.f, label %.thread16, label %bb.d

.thread16:                                        ; preds = %bb.c
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.g, align 4, !tbaa !21
  br label %.thread20

.thread17:                                        ; preds = %.thread14, %.thread15
  store <2 x float> zeroinitializer, ptr %i.b, align 4, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !21
  br label %.thread20

bb.d:                                             ; preds = %bb.c
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !21
  %i.i = icmp eq i32 %0, 3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.i, label %.thread18, label %bb.e

.thread18:                                        ; preds = %bb.d
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 4, !tbaa !21
  br label %.thread23

.thread20:                                        ; preds = %.thread16, %.thread17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x float> zeroinitializer, ptr %i.k, align 4, !tbaa !21
  br label %.thread23

bb.e:                                             ; preds = %bb.d
  store <2 x float> zeroinitializer, ptr %i.j, align 4, !tbaa !21
  %i.l = icmp eq i32 %0, 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.l, label %.thread21, label %bb.f

.thread21:                                        ; preds = %bb.e
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.m, align 4, !tbaa !21
  br label %.thread26

.thread23:                                        ; preds = %.thread18, %.thread20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <2 x float> zeroinitializer, ptr %i.n, align 4, !tbaa !21
  br label %.thread26

bb.f:                                             ; preds = %bb.e
  store <2 x float> zeroinitializer, ptr %i.m, align 4, !tbaa !21
  %i.o = icmp eq i32 %0, 5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %i.o, label %.thread24, label %bb.g

.thread24:                                        ; preds = %bb.f
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.p, align 4, !tbaa !21
  br label %.thread29

.thread26:                                        ; preds = %.thread21, %.thread23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x float> zeroinitializer, ptr %i.q, align 4, !tbaa !21
  br label %.thread29

bb.g:                                             ; preds = %bb.f
  store <2 x float> zeroinitializer, ptr %i.p, align 4, !tbaa !21
  %i.r = icmp eq i32 %0, 6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br i1 %i.r, label %.thread27, label %bb.h

.thread27:                                        ; preds = %bb.g
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.s, align 4, !tbaa !21
  br label %.thread32

.thread29:                                        ; preds = %.thread24, %.thread26
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x float> zeroinitializer, ptr %i.t, align 4, !tbaa !21
  br label %.thread32

bb.h:                                             ; preds = %bb.g
  store <2 x float> zeroinitializer, ptr %i.s, align 4, !tbaa !21
  %i.u = icmp eq i32 %0, 7
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %i.u, label %.thread30, label %bb.i

.thread30:                                        ; preds = %bb.h
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.v, align 4, !tbaa !21
  br label %.thread35

.thread32:                                        ; preds = %.thread27, %.thread29
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  store <2 x float> zeroinitializer, ptr %i.w, align 4, !tbaa !21
  br label %.thread35

bb.i:                                             ; preds = %bb.h
  store <2 x float> zeroinitializer, ptr %i.v, align 4, !tbaa !21
  %i.x = icmp eq i32 %0, 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br i1 %i.x, label %.thread33, label %bb.j

.thread33:                                        ; preds = %bb.i
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.y, align 4, !tbaa !21
  br label %.thread38

.thread35:                                        ; preds = %.thread30, %.thread32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <2 x float> zeroinitializer, ptr %i.z, align 4, !tbaa !21
  br label %.thread38

bb.j:                                             ; preds = %bb.i
  store <2 x float> zeroinitializer, ptr %i.y, align 4, !tbaa !21
  %i.aa = icmp eq i32 %0, 9
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br i1 %i.aa, label %.thread36, label %bb.k

.thread36:                                        ; preds = %bb.j
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ab, align 4, !tbaa !21
  br label %.thread41

.thread38:                                        ; preds = %.thread33, %.thread35
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  store <2 x float> zeroinitializer, ptr %i.ac, align 4, !tbaa !21
  br label %.thread41

bb.k:                                             ; preds = %bb.j
  store <2 x float> zeroinitializer, ptr %i.ab, align 4, !tbaa !21
  %i.ad = icmp eq i32 %0, 10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br i1 %i.ad, label %.thread39, label %bb.l

.thread39:                                        ; preds = %bb.k
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ae, align 4, !tbaa !21
  br label %bb.n

.thread41:                                        ; preds = %.thread36, %.thread38
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x float> zeroinitializer, ptr %i.af, align 4, !tbaa !21
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  store <2 x float> zeroinitializer, ptr %i.ae, align 4, !tbaa !21
  %i.ag = icmp eq i32 %0, 11
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.thread39, %.thread41, %bb.m
  %.sink = phi float [ 1.000000e+00, %bb.m ], [ 0.000000e+00, %.thread41 ], [ 0.000000e+00, %.thread39 ], [ 0.000000e+00, %bb.l ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %.sink, ptr %i.ah, align 4, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float 0.000000e+00, ptr %i.ai, align 4, !tbaa !21
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(argmem: write, errnomem: write) uwtable
define dso_local void @InputGenerate_StrictFP(i32 noundef %0, ptr noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %0, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %wide.trip.count28 = zext nneg i32 %2 to i64    ; 3 uses
  br i1 %i.b, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count28, 1
  %i.d = icmp eq i32 %2, 1
  br i1 %i.d, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
end_hunk_1
