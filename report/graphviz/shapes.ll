Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shapes?download=true
inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@point_init:bb.a
bb.j:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %.lcssa125 = phi <2 x double> [ %i.bi, %.unr-lcssa ], [ %i.bo, %.preheader.epil.preheader ] ; 2 uses
  %.lcssa = phi i64 [ %i.bn, %.unr-lcssa ], [ %i.bs, %.preheader.epil.preheader ]
  %i.bt = extractelement <2 x double> %.lcssa125, i64 0 ; 2 uses
  %i.bu = fmul double %i.bt, 2.000000e+00
  %i.bv = extractelement <2 x double> %.lcssa125, i64 1
  br label %bb.k

bb.k:                                             ; preds = %gv_calloc.exit, %bb.j
  %.097 = phi double [ %i.bu, %bb.j ], [ %i.z, %gv_calloc.exit ]
  %.sroa.15.1 = phi double [ %i.bv, %bb.j ], [ %i.au, %gv_calloc.exit ]
  %.sroa.0.1 = phi double [ %i.bt, %bb.j ], [ %i.au, %gv_calloc.exit ] ; 2 uses
  %.1 = phi i64 [ %.lcssa, %bb.j ], [ 2, %gv_calloc.exit ]
  %i.bw = icmp ugt i64 %.199, %i.ad
  %or.cond105 = and i1 %or.cond, %i.bw
  br i1 %or.cond105, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = fmul nnan double %i.ag, 5.000000e-01    ; 2 uses
  %i.by = fadd double %i.bx, %.sroa.0.1           ; 3 uses
  %i.bz = fadd double %i.bx, %.sroa.15.1          ; 2 uses
  %i.ca = fneg double %i.by
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.1 ; 4 uses
  store double %i.ca, ptr %i.cb, align 8, !tbaa !19
  %i.cc = fneg double %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store double %i.cc, ptr %i.cd, align 8, !tbaa !17
  %i.ce = getelementptr i8, ptr %i.cb, i64 16
  store double %i.by, ptr %i.ce, align 8, !tbaa !19
  %i.cf = getelementptr i8, ptr %i.cb, i64 24
  store double %i.bz, ptr %i.cf, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.2 = phi double [ %i.by, %bb.l ], [ %.sroa.0.1, %bb.k ]
  %i.cg = fmul double %.sroa.0.2, 2.000000e+00
  store i32 1, ptr %i.a, align 8, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ad, ptr %i.ch, align 8, !tbaa !56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 2, ptr %i.ci, align 8, !tbaa !57
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.at, ptr %i.cj, align 8, !tbaa !89
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !25  ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cn = insertelement <2 x double> poison, double %.097, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.cg, i64 1
  %i.cp = fdiv <2 x double> %i.co, splat (double 7.200000e+01) ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0 ; 2 uses
  store double %i.cq, ptr %i.cl, align 8, !tbaa !63
  store double %i.cq, ptr %i.cm, align 8, !tbaa !64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 120
  %i.cs = extractelement <2 x double> %i.cp, i64 1 ; 2 uses
  store double %i.cs, ptr %i.cr, align 8, !tbaa !110
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 128
  store double %i.cs, ptr %i.ct, align 8, !tbaa !111
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.a, ptr %i.cu, align 8, !tbaa !112
  ret void
}

declare void @epsf_init(ptr noundef) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @isPolygon(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = icmp eq ptr %i.g, @poly_init
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @find_user_shape(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @UserShape, align 8, !tbaa !117 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr @N_UserShape, align 8, !tbaa !119 ; 2 uses
  %.not13 = icmp eq i64 %i.b, 0
  br i1 %.not13, label %.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw i64 %.0610, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %i.b
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !120

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.0610 = phi i64 [ %i.c, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0610
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.g = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.f, ptr noundef nonnull readonly dereferenceable(1) %0) #31
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %.preheader ], [ %i.e, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define noundef ptr @bind_shape(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agget(ptr noundef %1, ptr noundef nonnull @.str.2) #26
  %i.b = tail call ptr @safefile(ptr noundef %i.a) #26
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.3) #31
  %i.d = icmp eq i32 %i.c, 0
  %spec.select = select i1 %i.d, ptr %0, ptr @.str.4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi ptr [ %spec.select, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %i.e = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.013, ptr noundef nonnull dereferenceable(7) @.str.4) #31
  %i.f = icmp eq i32 %i.e, 0
  %i.g = load ptr, ptr @Shapes, align 16          ; 2 uses
  %.not1522 = icmp eq ptr %i.g, null
  %or.cond = select i1 %i.f, i1 true, i1 %.not1522
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.l, %bb.d ], [ %i.g, %bb.c ]
  %.01223 = phi ptr [ %i.k, %bb.d ], [ @Shapes, %bb.c ] ; 2 uses
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %.013) #31
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %user_shape.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.01223, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85   ; 2 uses
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !122

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr @UserShape, align 8, !tbaa !117 ; 5 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %.pre.i = load i64, ptr @N_UserShape, align 8, !tbaa !119 ; 5 uses
  br i1 %.not.i.i, label %.loopexit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit
  %.not13.i.i = icmp eq i64 %.pre.i, 0
  br i1 %.not13.i.i, label %.thread17, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.n = add nuw i64 %.0610.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %.pre.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !120

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %.0610.i.i = phi i64 [ %i.n, %bb.e ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0610.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !121  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85
  %i.r = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %.013) #31
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %user_shape.exit, label %bb.e

.loopexit.i:                                      ; preds = %bb.e, %.loopexit
  %i.t = add i64 %.pre.i, 1                       ; 5 uses
  store i64 %i.t, ptr @N_UserShape, align 8, !tbaa !119
  %i.u = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit.i
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.5, i64 noundef %i.t, i64 noundef 8) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

bb.g:                                             ; preds = %.loopexit.i
  %i.x = shl nuw i64 %.pre.i, 3                   ; 2 uses
  %i.y = shl nuw i64 %i.t, 3                      ; 3 uses
  %i.z = icmp eq i64 %i.t, 0
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.m) #26
  br label %gv_recalloc.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call ptr @realloc(ptr noundef %i.m, i64 noundef range(i64 0, -7) %i.y) #32 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k

.thread17:                                        ; preds = %.preheader.i.i
  store i64 1, ptr @N_UserShape, align 8, !tbaa !119
  %i.ac = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef nonnull %i.m, i64 noundef range(i64 0, -7) 8) #32 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %.thread18

bb.j:                                             ; preds = %.thread17, %bb.i
  %i.ae = phi i64 [ 8, %.thread17 ], [ %i.y, %bb.i ]
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.6, i64 noundef range(i64 0, -7) %i.ae) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp ugt i64 %i.y, %i.x
  br i1 %i.ah, label %.thread18, label %gv_recalloc.exit.i

.thread18:                                        ; preds = %.thread17, %bb.k
  %i.ai = phi i64 [ %i.x, %bb.k ], [ 0, %.thread17 ]
  %i.aj = phi ptr [ %i.aa, %bb.k ], [ %i.ac, %.thread17 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i64 0, ptr %i.ak, align 1
  br label %gv_recalloc.exit.i

gv_recalloc.exit.i:                               ; preds = %.thread18, %bb.k, %bb.h
  %.0.i.i.i = phi ptr [ null, %bb.h ], [ %i.aj, %.thread18 ], [ %i.aa, %bb.k ] ; 2 uses
  store ptr %.0.i.i.i, ptr @UserShape, align 8, !tbaa !117
  %i.al = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef range(i64 1, 89) 32) #27 ; 6 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %gv_alloc.exit.i

bb.l:                                             ; preds = %gv_recalloc.exit.i
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.6, i64 noundef 32) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_alloc.exit.i:                                  ; preds = %gv_recalloc.exit.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %.pre.i
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 16 dereferenceable(32) @Shapes, i64 32, i1 false), !tbaa.struct !123
  %i.aq = tail call noalias ptr @strdup(ptr noundef nonnull readonly %.013) #26 ; 2 uses
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !85
  %i.ar = load ptr, ptr @Lib, align 8, !tbaa !127
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.m, label %find_user_shape.exit.sink.split.i

bb.m:                                             ; preds = %gv_alloc.exit.i
  %i.at = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.013, ptr noundef nonnull dereferenceable(7) @.str.4) #31
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %find_user_shape.exit.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr @Shapes, align 16, !tbaa !85
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.164, ptr noundef %i.av, ptr noundef %i.aq) #26
  br label %find_user_shape.exit.sink.split.i

find_user_shape.exit.sink.split.i:                ; preds = %bb.n, %bb.m, %gv_alloc.exit.i
  %.sink.i = phi i8 [ 0, %bb.n ], [ 1, %bb.m ], [ 1, %gv_alloc.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i8 %.sink.i, ptr %i.aw, align 8, !tbaa !82
  br label %user_shape.exit

user_shape.exit:                                  ; preds = %.lr.ph, %.lr.ph.i.i, %find_user_shape.exit.sink.split.i
  %.1 = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %find_user_shape.exit.sink.split.i ], [ %.01223, %.lr.ph ]
  ret ptr %.1
}

declare ptr @safefile(ptr noundef) local_unnamed_addr #7

declare ptr @agget(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @resolvePort(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.port) align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agraphof(ptr noundef %1) #26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  %i.g = load i32, ptr %i.f, align 4, !tbaa !113
  %i.h = and i32 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load double, ptr %i.k, align 8           ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.n = load double, ptr %i.m, align 8           ; 4 uses
  switch i32 %i.h, label %default.unreachable [
    i32 0, label %cvtPt.exit.thread.i
    i32 2, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
  ]

cvtPt.exit.thread.i:                              ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load double, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.t = load double, ptr %i.s, align 8
  br label %cvtPt.exit63.i

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.u = fneg double %i.n
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load double, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = fneg double %i.aa
  br label %cvtPt.exit63.i

bb.c:                                             ; preds = %bb.a
  %i.ac = fneg double %i.n
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load double, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = fneg double %i.ai
  br label %cvtPt.exit63.i

bb.d:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load double, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ap = load double, ptr %i.ao, align 8
  br label %cvtPt.exit63.i

cvtPt.exit63.i:                                   ; preds = %bb.d, %bb.c, %bb.b, %cvtPt.exit.thread.i
  %.sroa.05.0.i69.i = phi double [ %i.n, %bb.d ], [ %i.l, %bb.b ], [ %i.ac, %bb.c ], [ %i.l, %cvtPt.exit.thread.i ] ; 4 uses
  %.sroa.6.0.i68.i = phi double [ %i.l, %bb.d ], [ %i.u, %bb.b ], [ %i.l, %bb.c ], [ %i.n, %cvtPt.exit.thread.i ] ; 4 uses
  %.sroa.6.0.i58.i = phi double [ %i.an, %bb.d ], [ %i.ab, %bb.b ], [ %i.ag, %bb.c ], [ %i.t, %cvtPt.exit.thread.i ] ; 4 uses
  %.sroa.05.0.i59.i = phi double [ %i.ap, %bb.d ], [ %i.y, %bb.b ], [ %i.aj, %bb.c ], [ %i.r, %cvtPt.exit.thread.i ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 37 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !137 ; 2 uses
  %i.as = zext i8 %i.ar to i32                    ; 4 uses
  switch i8 %i.ar, label %bb.e [
    i8 15, label %closestSide.exit
    i8 0, label %closestSide.exit
  ]

bb.e:                                             ; preds = %cvtPt.exit63.i
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !139 ; 5 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.024.0.copyload.i = load double, ptr %i.au, align 8, !tbaa !9
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.13.0.copyload.i = load double, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.20.0.copyload.i = load double, ptr %.sroa.20.0..sroa_idx.i, align 8, !tbaa !9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.av = tail call ptr @agraphof(ptr noundef nonnull %1) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 132
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !113
  %i.ba = and i32 %i.az, 1
  %.not56.i = icmp eq i32 %i.ba, 0                ; 4 uses
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !140
  %i.be = fmul double %i.bd, 5.000000e-01         ; 3 uses
  %i.bf = fneg double %i.be                       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !141 ; 3 uses
  %i.bi = fneg double %i.bh                       ; 2 uses
  %..i = select i1 %.not56.i, double %i.be, double %i.bh
  %.90.i = select i1 %.not56.i, double %i.bh, double %i.be
  %.91.i = select i1 %.not56.i, double %i.bf, double %i.bi
  %.92.i = select i1 %.not56.i, double %i.bi, double %i.bf
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.20.0.i = phi double [ %.sroa.20.0.copyload.i, %bb.f ], [ %..i, %bb.g ] ; 2 uses
  %.sroa.13.0.i = phi double [ %.sroa.13.0.copyload.i, %bb.f ], [ %.90.i, %bb.g ] ; 2 uses
  %.sroa.8.0.i = phi double [ %.sroa.8.0.copyload.i, %bb.f ], [ %.91.i, %bb.g ] ; 2 uses
  %.sroa.024.0.i = phi double [ %.sroa.024.0.copyload.i, %bb.f ], [ %.92.i, %bb.g ] ; 2 uses
  %i.bj = fadd double %.sroa.20.0.i, %.sroa.8.0.i
  %i.bk = fmul double %i.bj, 5.000000e-01         ; 2 uses
  %i.bl = fadd double %.sroa.13.0.i, %.sroa.024.0.i
  %i.bm = fmul double %i.bl, 5.000000e-01         ; 2 uses
  %i.bn = and i32 %i.as, 1
  %i.bo = icmp eq i32 %i.bn, 0                    ; 2 uses
  br i1 %i.bo, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = fadd double %.sroa.05.0.i69.i, %i.bm
  %i.bq = fsub double %i.bp, %.sroa.05.0.i59.i    ; 2 uses
  %i.br = fadd double %.sroa.6.0.i68.i, %.sroa.8.0.i
  %i.bs = fsub double %i.br, %.sroa.6.0.i58.i     ; 2 uses
  %i.bt = fmul double %i.bs, %i.bs
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bt)
end_hunk_0
