begin_hunk_0_@graph_init:bb.a
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !44
  %.not162 = icmp eq i8 %i.jq, 0
  br i1 %.not162, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jr = call ptr @strdup_and_subst_obj(ptr noundef nonnull %i.jp, ptr noundef nonnull %0) #23
  %i.js = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !92
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 96
  store ptr %i.jr, ptr %i.jv, align 8, !tbaa !124
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: inlinehint nounwind uwtable
define internal void @agxbprint(ptr nofree noundef nonnull captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #12 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr nonnull %3)
  %i.b = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull %2) #23 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = icmp sgt i32 %i.b, -1
  %narrow.i = add nuw i32 %i.b, 1
  %i.d = zext i32 %narrow.i to i64                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.c, label %bb.b, label %vagxbprint.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 31         ; 5 uses
  %.val.i.i = load i8, ptr %i.e, align 1, !tbaa !44 ; 4 uses
  %.not.i.i = icmp eq i8 %.val.i.i, -1
  br i1 %.not.i.i, label %bb.c, label %agxbsizeof.exit.i

agxbsizeof.exit.i:                                ; preds = %bb.b
  %i.f = zext i8 %.val.i.i to i64
  br label %agxblen.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44
  br label %agxblen.exit.i

agxblen.exit.i:                                   ; preds = %bb.c, %agxbsizeof.exit.i
  %.0.i2.i = phi i64 [ 31, %agxbsizeof.exit.i ], [ %i.h, %bb.c ]
  %.0.i42.i = phi i64 [ %i.f, %agxbsizeof.exit.i ], [ %i.j, %bb.c ]
  %i.k = sub i64 %.0.i2.i, %.0.i42.i              ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %agxblen.exit.i
  %i.m = sub nuw nsw i64 %i.d, %i.k               ; 2 uses
  %i.n = icmp ne i8 %.val.i.i, -1
  %i.o = icmp eq i64 %i.m, 1
  %or.cond.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @agxbmore(ptr noundef nonnull %0, i64 noundef %i.m)
  %.val.i.i.pre.i = load i8, ptr %i.e, align 1, !tbaa !44
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %agxblen.exit.i
  %.val.i.i.i = phi i8 [ %.val.i.i, %agxblen.exit.i ], [ %.val.i.i.pre.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq i8 %.val.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.h, label %agxblen.exit.thread.i.i

agxblen.exit.thread.i.i:                          ; preds = %bb.g
  %i.p = zext i8 %.val.i.i.i to i64
  br label %agxbnext.exit.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44
  %i.s = load ptr, ptr %0, align 8, !tbaa !44
  br label %agxbnext.exit.i

agxbnext.exit.i:                                  ; preds = %bb.h, %agxblen.exit.thread.i.i
  %.0.i6.i.i = phi i64 [ %i.r, %bb.h ], [ %i.p, %agxblen.exit.thread.i.i ]
  %.pn.i.i = phi ptr [ %i.s, %bb.h ], [ %0, %agxblen.exit.thread.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.0.i6.i.i
  br label %bb.i

bb.i:                                             ; preds = %agxbnext.exit.i, %bb.f
  %.1366.i = phi i1 [ false, %agxbnext.exit.i ], [ true, %bb.f ]
  %i.u = phi ptr [ %i.t, %agxbnext.exit.i ], [ %i.a, %bb.f ]
  %i.v = call i32 @vsnprintf(ptr noundef %i.u, i64 noundef %i.d, ptr noundef nonnull @.str.47, ptr noundef nonnull %3) #23 ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !44 ; 3 uses
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.1366.i, label %agxbnext.exit48.i, label %bb.l

agxbnext.exit48.i:                                ; preds = %bb.k
  %i.x = zext i8 %.val.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = zext nneg i32 %i.v to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 16 %i.a, i64 %i.z, i1 false)
  %.pre.i = load i8, ptr %i.e, align 1, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %agxbnext.exit48.i, %bb.k
  %i.aa = phi i8 [ %.pre.i, %agxbnext.exit48.i ], [ %.val.i, %bb.k ]
  %i.ab = trunc i32 %i.v to i8
  %i.ac = add i8 %i.aa, %i.ab
  store i8 %i.ac, ptr %i.e, align 1, !tbaa !44
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ad = zext nneg i32 %i.v to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !44
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %vagxbprint.exit

vagxbprint.exit:                                  ; preds = %bb.a, %bb.n
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

declare i32 @agisdirected(ptr noundef) local_unnamed_addr #6

declare ptr @agmemconcat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare double @late_double(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

declare ptr @late_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @late_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @maptoken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @getdoubles2ptf(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 0, ptr %i.c, align 1, !tbaa !44
  %i.d = tail call ptr @agget(ptr noundef %0, ptr noundef %1) #23 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.155, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #23
  %i.f = icmp sgt i32 %i.e, 1
  %i.g = load double, ptr %i.a, align 8           ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  %i.i = load double, ptr %i.b, align 8           ; 2 uses
  %i.j = fcmp ogt double %i.i, 0.000000e+00
  %or.cond3 = select i1 %or.cond, i1 %i.j, i1 false
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = insertelement <2 x double> poison, double %i.g, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.i, i64 1
  %i.m = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> splat (double 7.200000e+01), <2 x double> splat (double 5.000000e-01)) ; 2 uses
  %3 = extractelement <2 x double> %i.m, i64 0
  %4 = fptosi double %3 to i32
  %5 = sitofp i32 %4 to double
  store double %5, ptr %2, align 8, !tbaa !125
  %i.n = extractelement <2 x double> %i.m, i64 1
  %6 = fptosi double %i.n to i32
  %7 = sitofp i32 %6 to double
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %i.c, align 1, !tbaa !44
  %i.o = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.156, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #23
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = load double, ptr %i.a, align 8           ; 2 uses
  %i.r = fcmp ogt double %i.q, 0.000000e+00
  %or.cond5 = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = call double @llvm.fmuladd.f64(double %i.q, double 7.200000e+01, double 5.000000e-01)
  %i.t = fptosi double %i.s to i32
  %i.u = sitofp i32 %i.t to double                ; 2 uses
  store double %i.u, ptr %2, align 8, !tbaa !125
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.c
  %.sink = phi double [ %7, %bb.c ], [ %i.u, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %.sink, ptr %i.v, align 8, !tbaa !126
  %i.w = load i8, ptr %i.c, align 1, !tbaa !44
  %i.x = icmp eq i8 %i.w, 33
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.a
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ %i.x, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.0
}

declare zeroext i1 @mapbool(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @do_graph_label(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @agget(ptr noundef %0, ptr noundef nonnull @.str.34) #23 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1, !tbaa !44
  %.not54 = icmp eq i8 %i.b, 0
  br i1 %.not54, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 129 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !132
  %i.i = or i8 %i.h, 8
  store i8 %i.i, ptr %i.g, align 1, !tbaa !132
  %i.j = tail call i32 @aghtmlstr(ptr noundef nonnull %i.a) #23
  %i.k = icmp ne i32 %i.j, 0
  %i.l = tail call ptr @agattr_text(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef null) #23
  %i.m = tail call double @late_double(ptr noundef %0, ptr noundef %i.l, double noundef 1.400000e+01, double noundef 1.000000e+00) #23
  %i.n = tail call ptr @agattr_text(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef null) #23
  %i.o = tail call ptr @late_nnstring(ptr noundef %0, ptr noundef %i.n, ptr noundef nonnull @.str.123) #23
  %i.p = tail call ptr @agattr_text(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.85, ptr noundef null) #23
  %i.q = tail call ptr @late_nnstring(ptr noundef %0, ptr noundef %i.p, ptr noundef nonnull @.str.124) #23
  %i.r = tail call ptr @make_label(ptr noundef %0, ptr noundef nonnull %i.a, i1 noundef zeroext %i.k, i1 noundef zeroext false, double noundef %i.m, ptr noundef %i.o, ptr noundef %i.q) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.r, ptr %i.u, align 8, !tbaa !133
  %i.v = tail call ptr @agget(ptr noundef %0, ptr noundef nonnull @.str.125) #23 ; 3 uses
  %i.w = tail call ptr @agroot(ptr noundef %0) #23
  %.not55 = icmp eq ptr %0, %i.w
  %.not56 = icmp eq ptr %i.v, null                ; 2 uses
  br i1 %.not55, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not56, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.v, align 1, !tbaa !44
  %i.y = icmp eq i8 %i.x, 98
  br i1 %i.y, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  br i1 %.not56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.v, align 1, !tbaa !44
  %i.aa = icmp eq i8 %i.z, 116
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.i, %bb.f
  %.046 = phi i8 [ 0, %bb.i ], [ 1, %bb.f ], [ 0, %bb.e ], [ 1, %bb.h ] ; 4 uses
  %i.ab = tail call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.126) #23 ; 2 uses
  %.not58 = icmp eq ptr %i.ab, null
  br i1 %.not58, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !44
  switch i8 %i.ac, label %bb.n [
    i8 108, label %bb.l
    i8 114, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ad = or disjoint i8 %.046, 2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ae = or disjoint i8 %.046, 4
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.j
  %.147 = phi i8 [ %i.ad, %bb.l ], [ %i.ae, %bb.m ], [ %.046, %bb.k ], [ %.046, %bb.j ]
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 395
  store i8 %.147, ptr %i.ag, align 1, !tbaa !134
  %i.ah = tail call ptr @agroot(ptr noundef nonnull %0) #23
  %.not62 = icmp eq ptr %0, %i.ah
  br i1 %.not62, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !133
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load <2 x double>, ptr %i.al, align 8, !tbaa !63
  %i.an = fadd <2 x double> %i.am, <double 1.600000e+01, double 8.000000e+00> ; 2 uses
  %i.ao = tail call ptr @agroot(ptr noundef nonnull %0) #23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !88
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 132
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !109
  %i.at = and i32 %i.as, 1
  %.not59 = icmp eq i32 %i.at, 0
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !88  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 395
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !134 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 64 ; 2 uses
  br i1 %.not59, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = shl i8 %i.aw, 1
  %i.az = and i8 %i.ay, 2
  %. = zext nneg i8 %i.az to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.
  store <2 x double> %i.an, ptr %i.ba, align 8, !tbaa !63
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.bb = and i8 %i.aw, 1
  %.not61 = icmp eq i8 %i.bb, 0
  %.63 = select i1 %.not61, i64 3, i64 1
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.63
  %i.bd = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !63
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.p, %bb.n, %bb.a, %bb.b
  ret void
}

declare ptr @init_xdot(ptr noundef) local_unnamed_addr #6

declare ptr @strdup_and_subst_obj(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @graph_cleanup(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %.thread20, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @freeXDot(ptr noundef nonnull %i.f) #23
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !88
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre13 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !92 ; 2 uses
  %.not12 = icmp eq ptr %.pre13, null
  br i1 %.not12, label %.thread, label %.thread20

.thread20:                                        ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %.pre13, %bb.c ], [ %i.d, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !124
  tail call void @free(ptr noundef %i.i) #23
  %.pre14 = load ptr, ptr %i.a, align 8, !tbaa !88
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %.pre14, i64 16
  %.pre16 = load ptr, ptr %.phi.trans.insert15, align 8, !tbaa !92
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread20, %bb.c
  %i.j = phi ptr [ %.pre16, %.thread20 ], [ null, %bb.c ], [ null, %bb.a ]
  tail call void @free(ptr noundef %i.j) #23
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr null, ptr %i.l, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !133
  tail call void @free_label(ptr noundef %i.n) #23
  tail call void @agclean(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.118) #23
  ret void
}

end_hunk_0
