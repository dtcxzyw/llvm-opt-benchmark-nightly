Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/halftest?download=true
inline.NumInlined: 78
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z15overflowtestallv:bb.a
  %.0.i = phi i32 [ 1, %bb.d ], [ 0, %_Z3f2hf.exit.i ]
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 796), align 4, !tbaa !10 ; 2 uses
  %.not.i.i.i1 = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_Z12overflowtestf.exit
  %i.k = add i16 %i.j, 1024
  br label %_Z3f2hf.exit.i2

bb.f:                                             ; preds = %_Z12overflowtestf.exit
  %i.l = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef -947916800)
  br label %_Z3f2hf.exit.i2

_Z3f2hf.exit.i2:                                  ; preds = %bb.f, %bb.e
  %.1.i.i.i3 = phi i16 [ %i.l, %bb.f ], [ %i.k, %bb.e ] ; 3 uses
  %.not.i4 = icmp eq i16 %.1.i.i.i3, -1024
  br i1 %.not.i4, label %_Z12overflowtestf.exit6, label %bb.g

bb.g:                                             ; preds = %_Z3f2hf.exit.i2
  %i.m = zext i16 %.1.i.i.i3 to i32
  %i.n = zext i16 %.1.i.i.i3 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !9
  %i.q = fpext float %i.p to double
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef -6.552000e+04, i32 noundef %i.m, double noundef %i.q, i32 noundef 64512, ptr noundef nonnull @.str.8) ; 0 uses
  br label %_Z12overflowtestf.exit6

_Z12overflowtestf.exit6:                          ; preds = %_Z3f2hf.exit.i2, %bb.g
  %.0.i5 = phi i32 [ 1, %bb.g ], [ 0, %_Z3f2hf.exit.i2 ]
  %i.s = add nuw nsw i32 %.0.i5, %.0.i
  ret i32 %i.s
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z4testPKcPFivE(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %0) ; 0 uses
  %i.b = tail call noundef i32 %1()               ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %.str.12..str.13 = select i1 %.not, ptr @.str.13, ptr @.str.12
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %0, ptr noundef nonnull %.str.12..str.13) ; 0 uses
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z7testallb(i1 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.14) ; 0 uses
  %i.b = tail call noundef i32 @_Z11compatcheckv(), !inline_history !22 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  %.str.12..str.13.i = select i1 %.not.i, ptr @.str.13, ptr @.str.12
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull @.str.14, ptr noundef nonnull %.str.12..str.13.i) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.15) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %_Z9spotcheckif.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %_Z9spotcheckif.exit.i ] ; 3 uses
  %.068.i = phi i32 [ 0, %bb.a ], [ %i.v, %_Z9spotcheckif.exit.i ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZZ12spotcheckallvE1t, i64 %indvars.iv.i ; 2 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !18
  %i.g = fptosi float %i.f to i32                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !18 ; 3 uses
  %i.j = and i32 %i.g, 65535
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !9  ; 2 uses
  %i.n = fsub float %i.i, %i.m
  %i.o = fdiv float %i.n, %i.i
  %i.p = tail call noundef float @llvm.fabs.f32(float %i.o)
  %i.q = fpext float %i.p to double
  %i.r = fcmp ogt double %i.q, f0x3EB0C6F7A0B5ED8D
  br i1 %i.r, label %bb.c, label %_Z9spotcheckif.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = fpext float %i.m to double
  %i.t = fpext float %i.i to double
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.g, double noundef %i.s, double noundef %i.t) ; 0 uses
  br label %_Z9spotcheckif.exit.i

_Z9spotcheckif.exit.i:                            ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.v = add nuw nsw i32 %.0.i.i, %.068.i         ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %i.w = icmp samesign ult i64 %indvars.iv.i, 142
  br i1 %i.w, label %bb.b, label %_Z12spotcheckallv.exit, !llvm.loop !20

_Z12spotcheckallv.exit:                           ; preds = %_Z9spotcheckif.exit.i
  %.not.i11 = icmp eq i32 %i.v, 0
  %.str.12..str.13.i12 = select i1 %.not.i11, ptr @.str.13, ptr @.str.12
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull @.str.15, ptr noundef nonnull %.str.12..str.13.i12) ; 0 uses
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.16) ; 0 uses
  %i.z = tail call noundef i32 @_Z14testconvertallv(), !inline_history !22 ; 2 uses
  %.not.i13 = icmp eq i32 %i.z, 0
  %.str.12..str.13.i14 = select i1 %.not.i13, ptr @.str.13, ptr @.str.12
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull @.str.16, ptr noundef nonnull %.str.12..str.13.i14) ; 0 uses
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.17) ; 0 uses
  %i.ac = tail call noundef i32 @_Z8infcheckv(), !inline_history !22 ; 2 uses
  %.not.i15 = icmp eq i32 %i.ac, 0
  %.str.12..str.13.i16 = select i1 %.not.i15, ptr @.str.13, ptr @.str.12
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.12..str.13.i16) ; 0 uses
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.18) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_Z12spotcheckallv.exit
  %.010.i = phi i32 [ 0, %_Z12spotcheckallv.exit ], [ %i.ax, %bb.g ] ; 2 uses
  %.069.i = phi i32 [ 0, %_Z12spotcheckallv.exit ], [ %i.aw, %bb.g ] ; 2 uses
  %i.af = shl nuw nsw i32 %.010.i, 13
  %i.ag = add nuw nsw i32 %i.af, 2143289344       ; 5 uses
  %i.ah = bitcast i32 %i.ag to float
  %i.ai = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 510), align 2, !tbaa !10 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = lshr exact i32 %i.ag, 13
  %i.ak = trunc i32 %i.aj to i16
  %i.al = and i16 %i.ak, 1023
  %i.am = add i16 %i.al, %i.ai
  br label %_Z3f2hf.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.an = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.ag)
  br label %_Z3f2hf.exit.i.i

_Z3f2hf.exit.i.i:                                 ; preds = %bb.f, %bb.e
  %.1.i.i.i.i = phi i16 [ %i.an, %bb.f ], [ %i.am, %bb.e ] ; 2 uses
  %i.ao = zext i16 %.1.i.i.i.i to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !9 ; 2 uses
  %rhsv.cast.i.i = bitcast float %i.aq to i32     ; 2 uses
  %.not.i.i = icmp eq i32 %i.ag, %rhsv.cast.i.i
  br i1 %.not.i.i, label %bb.g, label %_Z7excheckj.exit.i

_Z7excheckj.exit.i:                               ; preds = %_Z3f2hf.exit.i.i
  %i.ar = zext i16 %.1.i.i.i.i to i32
  %i.as = fpext float %i.ah to double
  %i.at = fpext float %i.aq to double
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.as, i32 noundef %i.ag, i32 noundef %i.ar, double noundef %i.at, i32 noundef %rhsv.cast.i.i) ; 0 uses
  %i.av = add nsw i32 %.069.i, 1
  br label %bb.g

bb.g:                                             ; preds = %_Z7excheckj.exit.i, %_Z3f2hf.exit.i.i
  %i.aw = phi i32 [ %i.av, %_Z7excheckj.exit.i ], [ %.069.i, %_Z3f2hf.exit.i.i ] ; 3 uses
  %i.ax = add nuw nsw i32 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ax, 512
  br i1 %exitcond.not.i, label %_Z8nancheckv.exit, label %bb.d, !llvm.loop !21

_Z8nancheckv.exit:                                ; preds = %bb.g
  %i.ay = add nuw nsw i32 %i.v, %i.b
  %i.az = add nsw i32 %i.ay, %i.z
  %i.ba = add nsw i32 %i.az, %i.ac
  %.not.i17 = icmp eq i32 %i.aw, 0
  %.str.12..str.13.i18 = select i1 %.not.i17, ptr @.str.13, ptr @.str.12
  %i.bb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull @.str.18, ptr noundef nonnull %.str.12..str.13.i18) ; 0 uses
  %i.bc = add nsw i32 %i.ba, %i.aw
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.19) ; 0 uses
  %i.be = tail call noundef i32 @_Z15overflowtestallv(), !inline_history !22 ; 2 uses
  %.not.i19 = icmp eq i32 %i.be, 0
  %.str.12..str.13.i20 = select i1 %.not.i19, ptr @.str.13, ptr @.str.12
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull @.str.19, ptr noundef nonnull %.str.12..str.13.i20) ; 0 uses
  %i.bg = add nsw i32 %i.bc, %i.be
  %_Z12testroundallv._Z13testroundsomev = select i1 %0, ptr @_Z12testroundallv, ptr @_Z13testroundsomev
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.20) ; 0 uses
  %i.bi = tail call noundef i32 %_Z12testroundallv._Z13testroundsomev(), !inline_history !22 ; 2 uses
  %.not.i21 = icmp eq i32 %i.bi, 0
  %.str.12..str.13.i22 = select i1 %.not.i21, ptr @.str.13, ptr @.str.12
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull @.str.20, ptr noundef nonnull %.str.12..str.13.i22) ; 0 uses
  %i.bk = add nsw i32 %i.bg, %i.bi                ; 3 uses
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_Z8nancheckv.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %_Z8nancheckv.exit
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.bk) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret i32 %i.bk
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z13f2htimingtestv() local_unnamed_addr #1 {
vector.ph:
  %i.a = alloca [65536 x float], align 16         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x float>, ptr %i.b, align 16, !tbaa !9 ; 2 uses
  %wide.load30 = load <4 x float>, ptr %i.c, align 16, !tbaa !9 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.e = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.f = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load30)
  %0 = fcmp one <4 x float> %i.e, splat (float +inf)
  %1 = fcmp one <4 x float> %i.f, splat (float +inf)
  %i.g = select <4 x i1> %0, <4 x float> %wide.load, <4 x float> splat (float 1.000000e+00)
  %i.h = select <4 x i1> %1, <4 x float> %wide.load30, <4 x float> splat (float 1.000000e+00)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x float> %i.g, ptr %i.d, align 16
  store <4 x float> %i.h, ptr %i.i, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, 65536
  br i1 %i.j, label %.preheader, label %vector.body, !llvm.loop !23

.preheader:                                       ; preds = %vector.body, %bb.b
  %.01321 = phi i32 [ %i.l, %bb.b ], [ 0, %vector.body ]
  %.01520 = phi i32 [ %i.ab, %bb.b ], [ 0, %vector.body ]
  br label %bb.c

bb.a:                                             ; preds = %bb.b
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.ab) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void

bb.b:                                             ; preds = %_Z3f2hf.exit
  %i.l = add nuw nsw i32 %.01321, 1               ; 2 uses
  %exitcond27.not = icmp eq i32 %i.l, 30720
  br i1 %exitcond27.not, label %bb.a, label %.preheader, !llvm.loop !26

bb.c:                                             ; preds = %.preheader, %_Z3f2hf.exit
  %indvars.iv23 = phi i64 [ 1024, %.preheader ], [ %indvars.iv.next24, %_Z3f2hf.exit ] ; 2 uses
  %.118 = phi i32 [ %.01520, %.preheader ], [ %i.ab, %_Z3f2hf.exit ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv23
  %i.n = load float, ptr %i.m, align 4, !tbaa !18 ; 2 uses
  %i.o = fcmp oeq float %i.n, 0.000000e+00
  br i1 %i.o, label %_Z3f2hf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = bitcast float %i.n to i32                ; 3 uses
  %i.q = lshr i32 %i.p, 23
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !10   ; 2 uses
  %.not.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = and i32 %i.p, 8384512
  %i.v = add nuw nsw i32 %i.u, 4096
  %i.w = lshr i32 %i.v, 13
  %i.x = trunc nuw nsw i32 %i.w to i16
  %i.y = add i16 %i.t, %i.x
  br label %_Z3f2hf.exit

bb.f:                                             ; preds = %bb.d
  %i.z = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.p)
  br label %_Z3f2hf.exit

_Z3f2hf.exit:                                     ; preds = %bb.c, %bb.e, %bb.f
  %.1.i.i = phi i16 [ 0, %bb.c ], [ %i.y, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = zext i16 %.1.i.i to i32
  %i.ab = add nsw i32 %.118, %i.aa                ; 3 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 31740
  br i1 %exitcond26.not, label %bb.b, label %bb.c, !llvm.loop !27
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_Z13h2ftimingtestv() local_unnamed_addr #2 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.0611 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.c ]
  %.0710 = phi float [ 0.000000e+00, %bb.a ], [ %i.r, %bb.c ]
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.a = fpext float %i.r to double
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, double noundef %i.a) ; 0 uses
  ret void

bb.c:                                             ; preds = %bb.d
  %i.c = add nuw nsw i32 %.0611, 1                ; 2 uses
  %exitcond13.not = icmp eq i32 %i.c, 30720
  br i1 %exitcond13.not, label %bb.b, label %.preheader, !llvm.loop !28

bb.d:                                             ; preds = %bb.d, %.preheader
  %indvars.iv = phi i64 [ 1024, %.preheader ], [ %indvars.iv.next.3, %bb.d ] ; 5 uses
  %.18 = phi float [ %.0710, %.preheader ], [ %i.r, %bb.d ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %indvars.iv
  %i.e = load float, ptr %i.d, align 16, !tbaa !9
  %i.f = fadd float %.18, %i.e
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !9
  %i.j = fadd float %i.f, %i.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !9
  %i.n = fadd float %i.j, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !9
  %i.r = fadd float %i.n, %i.q                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 31740
  br i1 %exitcond.not.3, label %bb.c, label %bb.d, !llvm.loop !29
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z8printallv() local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %indvars.iv
  %i.b = load float, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.c = fpext float %i.b to double
  %i.d = bitcast float %i.b to i32
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.e, double noundef %i.c, i32 noundef %i.d) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !30

bb.c:                                             ; preds = %_Z3f2hf.exit
  ret void

.preheader:                                       ; preds = %bb.b, %_Z3f2hf.exit
  %.01214 = phi i32 [ %i.ab, %_Z3f2hf.exit ], [ -10, %bb.b ] ; 2 uses
  %i.g = sitofp i32 %.01214 to double
  %i.h = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.g) #10 ; 2 uses
  %i.i = fptrunc double %i.h to float             ; 2 uses
  %i.j = fcmp oeq float %i.i, 0.000000e+00
  br i1 %i.j, label %_Z3f2hf.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.k = bitcast float %i.i to i32                ; 3 uses
  %i.l = lshr i32 %i.k, 23
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !10   ; 2 uses
  %.not.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.k, 8384512
  %i.q = add nuw nsw i32 %i.p, 4096
  %i.r = lshr i32 %i.q, 13
  %i.s = trunc nuw nsw i32 %i.r to i16
  %i.t = add i16 %i.o, %i.s
  br label %_Z3f2hf.exit

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.k)
  br label %_Z3f2hf.exit

_Z3f2hf.exit:                                     ; preds = %.preheader, %bb.e, %bb.f
  %.1.i.i = phi i16 [ 0, %.preheader ], [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.v = zext i16 %.1.i.i to i32
  %i.w = zext i16 %.1.i.i to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !9
  %i.z = fpext float %i.y to double
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, double noundef %i.h, i32 noundef %i.v, double noundef %i.z) ; 0 uses
  %i.ab = add nsw i32 %.01214, 1                  ; 2 uses
  %exitcond16.not = icmp eq i32 %i.ab, 10
  br i1 %exitcond16.not, label %bb.c, label %.preheader, !llvm.loop !31
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef i32 @_Z7testallb(i1 noundef zeroext false)
  %.not = icmp ne i32 %i.a, 0
  %i.b = zext i1 %.not to i32
  ret i32 %i.b
}

declare noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }

end_hunk_0
