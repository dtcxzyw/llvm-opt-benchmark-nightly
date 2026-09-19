Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/io?download=true
inline.NumInlined: 109
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 23
begin_hunk_0_@readhat2_int:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph27, %.lr.ph.i22
  %indvars.iv31 = phi i64 [ %indvars.iv, %.lr.ph27 ], [ %indvars.iv.next32, %.lr.ph.i22 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.y = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not.i21 = icmp eq i32 %i.y, 10
  br i1 %.not.i21, label %.lr.ph.i22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = call i32 @ungetc(i32 noundef %i.y, ptr noundef %0) ; 0 uses
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.g, %bb.f
  %i.aa = call i32 @getc(ptr noundef %0)
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.a, align 1, !tbaa !37
  %i.ac = call i32 @getc(ptr noundef %0)
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.l, align 1, !tbaa !37
  %i.ae = call i32 @getc(ptr noundef %0)
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.m, align 1, !tbaa !37
  %i.ag = call i32 @getc(ptr noundef %0)
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %i.n, align 1, !tbaa !37
  %i.ai = call i32 @getc(ptr noundef %0)
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %i.o, align 1, !tbaa !37
  %i.ak = call i32 @getc(ptr noundef %0)
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.p, align 1, !tbaa !37
  store i8 0, ptr %i.k, align 1, !tbaa !37
  %i.am = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #32, !inline_history !8
  %i.an = fptrunc double %i.am to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ao = fpext float %i.an to double
  %i.ap = call double @llvm.fmuladd.f64(double %i.ao, double 1.000000e+06, double 5.000000e-01)
  %i.aq = fptosi double %i.ap to i32
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv31
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !26
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count
  br i1 %exitcond34.not, label %.loopexit, label %bb.f, !llvm.loop !107

._crit_edge:                                      ; preds = %.loopexit, %bb.c, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: nofree nounwind uwtable
define dso_local void @readhat2(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 10 uses
  %i.b = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.d = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 0, ptr %i.e, align 1, !tbaa !37
  %i.f = call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #32, !inline_history !9
  %i.g = trunc i64 %i.f to i32
  %.not = icmp eq i32 %1, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ErrorExit(ptr noundef nonnull @.str.25)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) ; 0 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %myfgets.exit
  %.not45 = icmp eq i32 %1, 1
  br i1 %.not45, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %.preheader
  %i.j = add nsw i32 %1, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %wide.trip.count38 = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br label %.lr.ph27

.lr.ph:                                           ; preds = %bb.c, %myfgets.exit
  %.01925 = phi i32 [ %i.w, %myfgets.exit ], [ 0, %bb.c ]
  %i.q = call i32 @feof(ptr noundef %0) #32
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %.lr.ph.i, label %myfgets.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.d
  %.021.i = phi i32 [ %i.u, %bb.d ], [ 0, %.lr.ph ]
  %.01220.i = phi ptr [ %i.t, %bb.d ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.r = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not15.i = icmp eq i32 %i.r, 10
  br i1 %.not15.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.01220.i, i64 1 ; 2 uses
  store i8 %i.s, ptr %.01220.i, align 1, !tbaa !37
  %i.u = add nuw nsw i32 %.021.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, 254
  br i1 %exitcond.not.i, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !6

.critedge.i:                                      ; preds = %.lr.ph.i
  store i8 0, ptr %.01220.i, align 1, !tbaa !37
  br label %myfgets.exit

.critedge18.i:                                    ; preds = %bb.d
  store i8 0, ptr %i.t, align 1, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.critedge18.i
  %i.v = call i32 @getc(ptr noundef %0)
  %.not17.i = icmp eq i32 %i.v, 10
  br i1 %.not17.i, label %myfgets.exit, label %bb.e, !llvm.loop !7

myfgets.exit:                                     ; preds = %bb.e, %.lr.ph, %.critedge.i
  %i.w = add nuw nsw i32 %.01925, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %1
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !108

.loopexit:                                        ; preds = %.lr.ph.i22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph27, !llvm.loop !109

.lr.ph27:                                         ; preds = %.loopexit, %.lr.ph29
  %indvars.iv35 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next36, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph29 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv35
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph27, %.lr.ph.i22
  %indvars.iv31 = phi i64 [ %indvars.iv, %.lr.ph27 ], [ %indvars.iv.next32, %.lr.ph.i22 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.y = call i32 @getc(ptr noundef %0)           ; 2 uses
  %.not.i21 = icmp eq i32 %i.y, 10
  br i1 %.not.i21, label %.lr.ph.i22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = call i32 @ungetc(i32 noundef %i.y, ptr noundef %0) ; 0 uses
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.g, %bb.f
  %i.aa = call i32 @getc(ptr noundef %0)
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.a, align 1, !tbaa !37
  %i.ac = call i32 @getc(ptr noundef %0)
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.l, align 1, !tbaa !37
  %i.ae = call i32 @getc(ptr noundef %0)
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.m, align 1, !tbaa !37
  %i.ag = call i32 @getc(ptr noundef %0)
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %i.n, align 1, !tbaa !37
  %i.ai = call i32 @getc(ptr noundef %0)
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %i.o, align 1, !tbaa !37
  %i.ak = call i32 @getc(ptr noundef %0)
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.p, align 1, !tbaa !37
  store i8 0, ptr %i.k, align 1, !tbaa !37
  %i.am = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #32, !inline_history !8
  %i.an = fptrunc double %i.am to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ao = fpext float %i.an to double
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv31
  store double %i.ao, ptr %i.aq, align 8, !tbaa !58
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count
  br i1 %exitcond34.not, label %.loopexit, label %bb.f, !llvm.loop !110

._crit_edge:                                      ; preds = %.loopexit, %bb.c, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteFloatHat2_pointer(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.preheader51.preheader, label %._crit_edge56

.preheader51.preheader:                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %wide.trip.count72 = zext nneg i32 %i.b to i64
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51.preheader, %._crit_edge
  %indvars.iv69 = phi i64 [ 0, %.preheader51.preheader ], [ %indvars.iv.next70, %._crit_edge ] ; 3 uses
  %indvars.iv67 = phi i32 [ %1, %.preheader51.preheader ], [ %indvars.iv.next68, %._crit_edge ] ; 3 uses
  %.055 = phi double [ 0.000000e+00, %.preheader51.preheader ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.c = zext i32 %indvars.iv67 to i64
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %4 = trunc i64 %indvars.iv69 to i32
  %5 = sub i32 %1, %4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader51
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv69
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %i.g = icmp eq i32 %indvars.iv67, 2
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.d, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.153 = phi double [ %.055, %.lr.ph.new ], [ %.2.1, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load float, ptr %i.h, align 4, !tbaa !53
  %i.j = fpext float %i.i to double               ; 2 uses
  %i.k = fcmp olt double %.153, %i.j
  %.2 = select i1 %i.k, double %i.j, double %.153 ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !53
  %i.o = fpext float %i.n to double               ; 2 uses
  %i.p = fcmp olt double %.2, %i.o
  %.2.1 = select i1 %i.p, double %i.o, double %.2 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !111

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.153.epil.init = phi double [ %.055, %.lr.ph ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %i.r = load float, ptr %i.q, align 4, !tbaa !53
  %i.s = fpext float %i.r to double               ; 2 uses
  %i.t = fcmp olt double %.153.epil.init, %i.s
  %.2.epil = select i1 %i.t, double %i.s, double %.153.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader51
  %.1.lcssa = phi double [ %.055, %.preheader51 ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ], [ %.2.epil, %.epil.preheader ] ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %indvars.iv.next68 = add i32 %indvars.iv67, -1
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge56.loopexit, label %.preheader51, !llvm.loop !112

._crit_edge56.loopexit:                           ; preds = %._crit_edge
  %i.u = fmul double %.1.lcssa, 2.500000e+00
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.u, %._crit_edge56.loopexit ]
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1) #32 ; 0 uses
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, double noundef %.0.lcssa) #32 ; 0 uses
  %i.y = icmp sgt i32 %1, 0
  br i1 %i.y, label %.lr.ph60.preheader, label %._crit_edge65

.lr.ph60.preheader:                               ; preds = %._crit_edge56
  %wide.trip.count77 = zext nneg i32 %1 to i64
  br label %.lr.ph60

.preheader.preheader:                             ; preds = %.lr.ph60
  %i.z = zext nneg i32 %1 to i64                  ; 2 uses
  br label %.preheader

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv74 = phi i64 [ 0, %.lr.ph60.preheader ], [ %indvars.iv.next75, %.lr.ph60 ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv74
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.ac = trunc nuw nsw i64 %indvars.iv.next75 to i32
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %i.ac, ptr noundef %i.ab) #32 ; 0 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.preheader.preheader, label %.lr.ph60, !llvm.loop !113

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge63
  %indvars.iv86 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next87, %._crit_edge63 ] ; 3 uses
  %indvars.iv82 = phi i32 [ %1, %.preheader.preheader ], [ %indvars.iv.next83, %._crit_edge63 ] ; 2 uses
  %i.ae = sub nuw nsw i64 %i.z, %indvars.iv86     ; 2 uses
  %i.af = icmp samesign ugt i64 %i.ae, 1
  br i1 %i.af, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv86
  %i.ah = add nsw i64 %i.ae, -1
  %wide.trip.count84 = zext i32 %indvars.iv82 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph62, %bb.e
  %indvars.iv79 = phi i64 [ 1, %.lr.ph62 ], [ %indvars.iv.next80, %bb.e ] ; 4 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv79
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !53
  %i.al = fpext float %i.ak to double
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.al) #32 ; 0 uses
  %i.an = trunc nuw nsw i64 %indvars.iv79 to i32
  %i.ao = urem i32 %i.an, 12
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = icmp eq i64 %indvars.iv79, %i.ah
  %or.cond = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge63, label %bb.c, !llvm.loop !114

._crit_edge63:                                    ; preds = %bb.e, %.preheader
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %indvars.iv.next83 = add i32 %indvars.iv82, -1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %i.z
  br i1 %exitcond90.not, label %._crit_edge65, label %.preheader, !llvm.loop !115

._crit_edge65:                                    ; preds = %._crit_edge63, %._crit_edge56
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteFloatHat2(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.preheader51.preheader, label %._crit_edge56

.preheader51.preheader:                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %wide.trip.count72 = zext nneg i32 %i.b to i64
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51.preheader, %._crit_edge
  %indvars.iv69 = phi i64 [ 0, %.preheader51.preheader ], [ %indvars.iv.next70, %._crit_edge ] ; 3 uses
  %indvars.iv67 = phi i32 [ %1, %.preheader51.preheader ], [ %indvars.iv.next68, %._crit_edge ] ; 3 uses
  %.055 = phi double [ 0.000000e+00, %.preheader51.preheader ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.c = zext i32 %indvars.iv67 to i64
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %4 = trunc i64 %indvars.iv69 to i32
  %5 = sub i32 %1, %4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader51
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv69
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %i.g = icmp eq i32 %indvars.iv67, 2
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.d, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.153 = phi double [ %.055, %.lr.ph.new ], [ %.2.1, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load float, ptr %i.h, align 4, !tbaa !53
  %i.j = fpext float %i.i to double               ; 2 uses
  %i.k = fcmp olt double %.153, %i.j
  %.2 = select i1 %i.k, double %i.j, double %.153 ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !53
  %i.o = fpext float %i.n to double               ; 2 uses
  %i.p = fcmp olt double %.2, %i.o
  %.2.1 = select i1 %i.p, double %i.o, double %.2 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !116

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.153.epil.init = phi double [ %.055, %.lr.ph ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %i.r = load float, ptr %i.q, align 4, !tbaa !53
  %i.s = fpext float %i.r to double               ; 2 uses
  %i.t = fcmp olt double %.153.epil.init, %i.s
  %.2.epil = select i1 %i.t, double %i.s, double %.153.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader51
  %.1.lcssa = phi double [ %.055, %.preheader51 ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ], [ %.2.epil, %.epil.preheader ] ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %indvars.iv.next68 = add i32 %indvars.iv67, -1
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge56.loopexit, label %.preheader51, !llvm.loop !117

._crit_edge56.loopexit:                           ; preds = %._crit_edge
  %i.u = fmul double %.1.lcssa, 2.500000e+00
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.u, %._crit_edge56.loopexit ]
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1) #32 ; 0 uses
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, double noundef %.0.lcssa) #32 ; 0 uses
  %i.y = icmp sgt i32 %1, 0
  br i1 %i.y, label %.lr.ph60.preheader, label %._crit_edge65

.lr.ph60.preheader:                               ; preds = %._crit_edge56
  %wide.trip.count77 = zext nneg i32 %1 to i64
  br label %.lr.ph60

.preheader.preheader:                             ; preds = %.lr.ph60
  %i.z = zext nneg i32 %1 to i64                  ; 2 uses
  br label %.preheader

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv74 = phi i64 [ 0, %.lr.ph60.preheader ], [ %indvars.iv.next75, %.lr.ph60 ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv74
  %i.ab = trunc nuw nsw i64 %indvars.iv.next75 to i32
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %i.ab, ptr noundef %i.aa) #32 ; 0 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.preheader.preheader, label %.lr.ph60, !llvm.loop !118

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge63
  %indvars.iv86 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next87, %._crit_edge63 ] ; 3 uses
  %indvars.iv82 = phi i32 [ %1, %.preheader.preheader ], [ %indvars.iv.next83, %._crit_edge63 ] ; 2 uses
  %i.ad = sub nuw nsw i64 %i.z, %indvars.iv86     ; 2 uses
  %i.ae = icmp samesign ugt i64 %i.ad, 1
  br i1 %i.ae, label %.lr.ph62, label %._crit_edge63

.lr.ph62:                                         ; preds = %.preheader
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv86
  %i.ag = add nsw i64 %i.ad, -1
  %wide.trip.count84 = zext i32 %indvars.iv82 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph62, %bb.e
  %indvars.iv79 = phi i64 [ 1, %.lr.ph62 ], [ %indvars.iv.next80, %bb.e ] ; 4 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv79
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !53
  %i.ak = fpext float %i.aj to double
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, double noundef %i.ak) #32 ; 0 uses
  %i.am = trunc nuw nsw i64 %indvars.iv79 to i32
  %i.an = urem i32 %i.am, 12
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = icmp eq i64 %indvars.iv79, %i.ag
  %or.cond = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge63, label %bb.c, !llvm.loop !119

._crit_edge63:                                    ; preds = %bb.e, %.preheader
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %indvars.iv.next83 = add i32 %indvars.iv82, -1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %i.z
  br i1 %exitcond90.not, label %._crit_edge65, label %.preheader, !llvm.loop !120

._crit_edge65:                                    ; preds = %._crit_edge63, %._crit_edge56
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteHat2_int(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, -1                       ; 2 uses
  %i.b = icmp sgt i32 %1, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph55.preheader, label %._crit_edge

.lr.ph55.preheader:                               ; preds = %bb.a
  %wide.trip.count73 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.c = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph

.loopexit50:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.2.lcssa = phi double [ %.2.lcssa.unr, %.prol.loopexit ], [ %.2.1, %.lr.ph.new ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

.lr.ph:                                           ; preds = %.loopexit50, %.lr.ph55.preheader
  %indvars.iv70 = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next71, %.loopexit50 ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph55.preheader ], [ %indvars.iv.next, %.loopexit50 ] ; 4 uses
  %.054 = phi double [ 0.000000e+00, %.lr.ph55.preheader ], [ %.2.lcssa, %.loopexit50 ] ; 3 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 3 uses
  %i.f = sub nsw i64 %indvars.iv70, %wide.trip.count
  %i.g = and i64 %i.f, 1
  %lcmp.mod.not.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26
  %i.j = sitofp i32 %i.i to double                ; 2 uses
  %i.k = fcmp olt double %.054, %i.j
  %.2.prol = select i1 %i.k, double %i.j, double %.054 ; 2 uses
  %indvars.iv.next68.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.2.lcssa.unr = phi double [ poison, %.lr.ph ], [ %.2.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv67.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next68.prol, %.prol.loopexit.unr-lcssa ]
  %.152.unr = phi double [ %.054, %.lr.ph ], [ %.2.prol, %.prol.loopexit.unr-lcssa ]
  %i.l = icmp eq i64 %i.c, %indvars.iv70
  br i1 %i.l, label %.loopexit50, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv67 = phi i64 [ %indvars.iv.next68.1, %.lr.ph.new ], [ %indvars.iv67.unr, %.prol.loopexit ] ; 3 uses
  %.152 = phi double [ %.2.1, %.lr.ph.new ], [ %.152.unr, %.prol.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv67
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = sitofp i32 %i.n to double                ; 2 uses
  %i.p = fcmp olt double %.152, %i.o
  %.2 = select i1 %i.p, double %i.o, double %.152 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv67
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = sitofp i32 %i.s to double                ; 2 uses
  %i.u = fcmp olt double %.2, %i.t
  %.2.1 = select i1 %i.u, double %i.t, double %.2 ; 2 uses
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next68.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit50, label %.lr.ph.new, !llvm.loop !122

._crit_edge:                                      ; preds = %.loopexit50, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.2.lcssa, %.loopexit50 ]
  %i.v = fdiv double %.0.lcssa, 1.000000e+06
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1) #32 ; 0 uses
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %1) #32 ; 0 uses
end_hunk_0
