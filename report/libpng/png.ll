Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/png?download=true
inline.NumInlined: 72
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@png_fixed:bb.a
  %i.e = fptosi double %i.b to i32
  ret i32 %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: noreturn
declare void @png_fixed_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @png_fixed_ITU(ptr noalias noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %1, double 1.000000e+04, double 5.000000e-01)
  %i.b = tail call double @llvm.floor.f64(double %i.a) ; 3 uses
  %i.c = fcmp ogt double %i.b, f0x41DFFFFFFFC00000
  %i.d = fcmp olt double %i.b, 0.000000e+00
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef %2) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = fptoui double %i.b to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @png_gamma_significant(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = add i32 %0, -105001
  %i.b = icmp ult i32 %i.a, -10001
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @png_reciprocal2(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ne i32 %0, 0
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sitofp i32 %0 to double
  %i.d = fdiv double 1.000000e+15, %i.c
  %i.e = sitofp i32 %1 to double
  %i.f = fdiv double %i.d, %i.e
  %i.g = fadd double %i.f, 5.000000e-01
  %i.h = tail call double @llvm.floor.f64(double %i.g) ; 3 uses
  %i.i = fcmp ugt double %i.h, f0x41DFFFFFFFC00000
  %i.j = fcmp ult double %i.h, f0xC1E0000000000000
  %or.cond3.not = or i1 %i.i, %i.j
  %i.k = fptosi double %i.h to i32
  br i1 %or.cond3.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.k, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define zeroext i8 @png_gamma_8bit_correct(i32 noundef %0, i32 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 254
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = uitofp nneg i32 %0 to double
  %i.c = fdiv double %i.b, 2.550000e+02
  %i.d = sitofp i32 %1 to double
  %i.e = fmul nnan double %i.d, 1.000000e-05
  %i.f = tail call double @pow(double noundef %i.c, double noundef %i.e) #28
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double 2.550000e+02, double 5.000000e-01)
  %i.h = tail call double @llvm.floor.f64(double %i.g)
  %i.i = fptoui double %i.h to i8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i32 %0 to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i8 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define zeroext i16 @png_gamma_16bit_correct(i32 noundef %0, i32 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 65534
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = uitofp nneg i32 %0 to double
  %i.c = fdiv double %i.b, 6.553500e+04
  %i.d = sitofp i32 %1 to double
  %i.e = fmul nnan double %i.d, 1.000000e-05
  %i.f = tail call double @pow(double noundef %i.c, double noundef %i.e) #28
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double 6.553500e+04, double 5.000000e-01)
  %i.h = tail call double @llvm.floor.f64(double %i.g)
  %i.i = fptoui double %i.h to i16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i32 %0 to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i16 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define zeroext i16 @png_gamma_correct(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load i8, ptr %i.a, align 8, !tbaa !174
  %i.c = icmp eq i8 %i.b, 8
  %i.d = add i32 %1, -1                           ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ult i32 %i.d, 254
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = uitofp nneg i32 %1 to double
  %i.f = fdiv double %i.e, 2.550000e+02
  %i.g = sitofp i32 %2 to double
  %i.h = fmul nnan double %i.g, 1.000000e-05
  %i.i = tail call double @pow(double noundef %i.f, double noundef %i.h) #28
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double 2.550000e+02, double 5.000000e-01)
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fptoui double %i.k to i8
  br label %png_gamma_8bit_correct.exit

bb.d:                                             ; preds = %bb.b
  %i.m = trunc i32 %1 to i8
  br label %png_gamma_8bit_correct.exit

png_gamma_8bit_correct.exit:                      ; preds = %bb.c, %bb.d
  %.0.i = phi i8 [ %i.l, %bb.c ], [ %i.m, %bb.d ]
  %i.n = zext i8 %.0.i to i16
  br label %png_gamma_16bit_correct.exit

bb.e:                                             ; preds = %bb.a
  %or.cond.i5 = icmp ult i32 %i.d, 65534
  br i1 %or.cond.i5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = uitofp nneg i32 %1 to double
  %i.p = fdiv double %i.o, 6.553500e+04
  %i.q = sitofp i32 %2 to double
  %i.r = fmul nnan double %i.q, 1.000000e-05
  %i.s = tail call double @pow(double noundef %i.p, double noundef %i.r) #28
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double 6.553500e+04, double 5.000000e-01)
  %i.u = tail call double @llvm.floor.f64(double %i.t)
  %i.v = fptoui double %i.u to i16
  br label %png_gamma_16bit_correct.exit

bb.g:                                             ; preds = %bb.e
  %i.w = trunc i32 %1 to i16
  br label %png_gamma_16bit_correct.exit

png_gamma_16bit_correct.exit:                     ; preds = %bb.g, %bb.f, %png_gamma_8bit_correct.exit
  %.0 = phi i16 [ %i.n, %png_gamma_8bit_correct.exit ], [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  ret i16 %.0
}

; Function Attrs: nounwind uwtable
define void @png_destroy_gamma_table(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  tail call void @png_free(ptr noundef %0, ptr noundef %i.b) #28
  store ptr null, ptr %i.a, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.f = load i32, ptr %i.e, align 8, !tbaa !177  ; 2 uses
  %.not54 = icmp eq i32 %i.f, -23
  br i1 %.not54, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = sub i32 8, %i.f
  %i.h = shl nuw nsw i32 1, %i.g
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !176
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !178
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.k) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !179

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !176
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.l = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.b ]
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.l) #28
  store ptr null, ptr %i.c, align 8, !tbaa !176
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !180
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.n) #28
  store ptr null, ptr %i.m, align 8, !tbaa !180
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !181
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.p) #28
  store ptr null, ptr %i.o, align 8, !tbaa !181
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %.not43 = icmp eq ptr %i.r, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.t = load i32, ptr %i.s, align 8, !tbaa !177  ; 2 uses
  %.not55 = icmp eq i32 %i.t, -23
  br i1 %.not55, label %._crit_edge49, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %bb.d
  %i.u = sub i32 8, %i.t
  %i.v = shl nuw nsw i32 1, %i.u
  %wide.trip.count62 = zext nneg i32 %i.v to i64
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %.lr.ph48
  %indvars.iv58 = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next59, %.lr.ph48 ] ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv58
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !178
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.y) #28
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge49.loopexit, label %.lr.ph48, !llvm.loop !183

._crit_edge49.loopexit:                           ; preds = %.lr.ph48
  %.pre70 = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %._crit_edge49.loopexit, %bb.d
  %i.z = phi ptr [ %.pre70, %._crit_edge49.loopexit ], [ %i.r, %bb.d ]
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.z) #28
  store ptr null, ptr %i.q, align 8, !tbaa !182
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge49, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184 ; 2 uses
  %.not44 = icmp eq ptr %i.ab, null
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !177 ; 2 uses
  %.not56 = icmp eq i32 %i.ad, -23
  br i1 %.not56, label %._crit_edge53, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %bb.f
  %i.ae = sub i32 8, %i.ad
  %i.af = shl nuw nsw i32 1, %i.ae
  %wide.trip.count68 = zext nneg i32 %i.af to i64
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %.lr.ph52
  %indvars.iv64 = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next65, %.lr.ph52 ] ; 2 uses
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !184
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !178
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.ai) #28
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge53.loopexit, label %.lr.ph52, !llvm.loop !185

._crit_edge53.loopexit:                           ; preds = %.lr.ph52
  %.pre71 = load ptr, ptr %i.aa, align 8, !tbaa !184
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %bb.f
  %i.aj = phi ptr [ %.pre71, %._crit_edge53.loopexit ], [ %i.ab, %bb.f ]
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.aj) #28
  store ptr null, ptr %i.aa, align 8, !tbaa !184
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge53, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_build_gamma_table(ptr noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176
  %.not66 = icmp eq ptr %i.d, null
  br i1 %.not66, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.56) #28
  tail call void @png_destroy_gamma_table(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.f = load i32, ptr %i.e, align 8, !tbaa !186  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.h = load i32, ptr %i.g, align 4, !tbaa !187  ; 2 uses
  %i.i = sitofp i32 %i.f to double                ; 2 uses
  %i.j = fdiv double 1.000000e+10, %i.i
  %i.k = fadd double %i.j, 5.000000e-01
  %i.l = tail call double @llvm.floor.f64(double %i.k) ; 3 uses
  %i.m = fcmp ole double %i.l, f0x41DFFFFFFFC00000
  %i.n = fcmp oge double %i.l, f0xC1E0000000000000
  %or.cond.i = and i1 %i.m, %i.n
  %i.o = fptosi double %i.l to i32
  %.0.i = select i1 %or.cond.i, i32 %i.o, i32 0   ; 3 uses
  %i.p = icmp sgt i32 %i.h, 0
  br i1 %i.p, label %bb.e, label %png_reciprocal2.exit

bb.e:                                             ; preds = %bb.d
  %i.q = uitofp nneg i32 %i.h to double           ; 2 uses
  %i.r = fdiv double 1.000000e+10, %i.q
  %i.s = fadd double %i.r, 5.000000e-01
  %i.t = tail call double @llvm.floor.f64(double %i.s) ; 3 uses
  %i.u = fcmp ole double %i.t, f0x41DFFFFFFFC00000
  %i.v = fcmp oge double %i.t, f0xC1E0000000000000
  %or.cond.i73 = and i1 %i.u, %i.v
  %i.w = fptosi double %i.t to i32
  %.0.i74 = select i1 %or.cond.i73, i32 %i.w, i32 0 ; 2 uses
  %.not106 = icmp eq i32 %i.f, 0
  br i1 %.not106, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = fdiv double 1.000000e+15, %i.q
  %i.y = fdiv double %i.x, %i.i
  %i.z = fadd double %i.y, 5.000000e-01
  %i.aa = tail call double @llvm.floor.f64(double %i.z) ; 3 uses
  %i.ab = fcmp ugt double %i.aa, f0x41DFFFFFFFC00000
  %i.ac = fcmp ult double %i.aa, f0xC1E0000000000000
  %or.cond3.not.i = or i1 %i.ab, %i.ac
  %i.ad = fptosi double %i.aa to i32
  br i1 %or.cond3.not.i, label %bb.g, label %png_reciprocal2.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %png_reciprocal2.exit

png_reciprocal2.exit:                             ; preds = %bb.g, %bb.f, %bb.d
  %.063 = phi i32 [ 100000, %bb.d ], [ 0, %bb.g ], [ %i.ad, %bb.f ] ; 4 uses
  %.062 = phi i32 [ %i.f, %bb.d ], [ %.0.i74, %bb.g ], [ %.0.i74, %bb.f ] ; 3 uses
  %i.ae = icmp slt i32 %1, 9
  br i1 %i.ae, label %bb.h, label %bb.s

bb.h:                                             ; preds = %png_reciprocal2.exit
  %i.af = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 256) #28 ; 18 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !46, !noalias !188
  %i.ag = add i32 %.063, -95000
  %i.ah = icmp ult i32 %i.ag, 10001
  br i1 %i.ah, label %vector.body, label %.preheader13.i

vector.body:                                      ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.af, align 1, !tbaa !30
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.ai, align 1, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.aj, align 1, !tbaa !30
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.ak, align 1, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.al, align 1, !tbaa !30
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.am, align 1, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.an, align 1, !tbaa !30
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.ao, align 1, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.ap, align 1, !tbaa !30
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.aq, align 1, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.ar, align 1, !tbaa !30
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.as, align 1, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.at, align 1, !tbaa !30
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.au, align 1, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.av, align 1, !tbaa !30
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.aw, align 1, !tbaa !30
  br label %png_build_8bit_table.exit

.preheader13.i:                                   ; preds = %bb.h
  %i.ax = sitofp i32 %.063 to double
  %i.ay = fmul nnan double %i.ax, 1.000000e-05
  br label %bb.i

bb.i:                                             ; preds = %png_gamma_8bit_correct.exit.i, %.preheader13.i
  %indvars.iv.i = phi i64 [ 0, %.preheader13.i ], [ %indvars.iv.next.i, %png_gamma_8bit_correct.exit.i ] ; 4 uses
  %i.az = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.ba = add i32 %i.az, -1
  %or.cond.i.i = icmp ult i32 %i.ba, 254
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = uitofp nneg i32 %i.az to double
  %i.bc = fdiv double %i.bb, 2.550000e+02
  %i.bd = tail call double @pow(double noundef %i.bc, double noundef %i.ay) #28
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double 2.550000e+02, double 5.000000e-01)
  %i.bf = tail call double @llvm.floor.f64(double %i.be)
  %i.bg = fptoui double %i.bf to i8
  br label %png_gamma_8bit_correct.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bh = trunc i64 %indvars.iv.i to i8
  br label %png_gamma_8bit_correct.exit.i

png_gamma_8bit_correct.exit.i:                    ; preds = %bb.k, %bb.j
  %.0.i.i = phi i8 [ %i.bg, %bb.j ], [ %i.bh, %bb.k ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i
  store i8 %.0.i.i, ptr %i.bi, align 1, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %png_build_8bit_table.exit, label %bb.i, !llvm.loop !191

png_build_8bit_table.exit:                        ; preds = %png_gamma_8bit_correct.exit.i, %vector.body
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !192
  %i.bl = and i32 %i.bk, 6291584
  %.not71 = icmp eq i32 %i.bl, 0
  br i1 %.not71, label %png_build_8bit_table.exit99, label %bb.l

bb.l:                                             ; preds = %png_build_8bit_table.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.bn = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 256) #28 ; 18 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !46, !noalias !193
  %i.bo = add i32 %.0.i, -95000
  %i.bp = icmp ult i32 %i.bo, 10001
  br i1 %i.bp, label %vector.body123, label %.preheader13.i76

vector.body123:                                   ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.bn, align 1, !tbaa !30
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.bq, align 1, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.br, align 1, !tbaa !30
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.bs, align 1, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.bt, align 1, !tbaa !30
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.bu, align 1, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.bv, align 1, !tbaa !30
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.bw, align 1, !tbaa !30
end_hunk_0
