inline.NumInlined: 22
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@shape_clip:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @shape_clip0(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [4 x %struct.pointf_s], align 16    ; 6 uses
  %5 = alloca [4 x %struct.pointf_s], align 16    ; 4 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %6 = alloca [4 x %struct.pointf_s], align 16    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load double, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load <2 x double>, ptr %2, align 8, !tbaa !8
  %i.i = load <2 x double>, ptr %i.g, align 8, !tbaa !8 ; 4 uses
  %i.j = fsub <2 x double> %i.h, %i.i             ; 3 uses
  store <2 x double> %i.j, ptr %6, align 16, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !8
  %i.n = fsub <2 x double> %i.m, %i.i
  store <2 x double> %i.n, ptr %i.l, align 16, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.q = load <2 x double>, ptr %i.o, align 8, !tbaa !8
  %i.r = fsub <2 x double> %i.q, %i.i
  store <2 x double> %i.r, ptr %i.p, align 16, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.u = load <2 x double>, ptr %i.s, align 8, !tbaa !8
  %i.v = fsub <2 x double> %i.u, %i.i             ; 3 uses
  store <2 x double> %i.v, ptr %i.t, align 16, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = extractelement <2 x double> %i.j, i64 0
  %i.ad = extractelement <2 x double> %i.j, i64 1
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = extractelement <2 x double> %i.v, i64 0
  %i.af = extractelement <2 x double> %i.v, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.021.0.i = phi double [ %i.ae, %bb.b ], [ %i.ac, %bb.a ]
  %.sroa.8.0.i = phi double [ %i.af, %bb.b ], [ %i.ad, %bb.a ]
  %.040.i = phi ptr [ null, %bb.b ], [ %4, %bb.a ]
  %.039.i = phi ptr [ %4, %bb.b ], [ null, %bb.a ]
  %.038.i = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %.037.i = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.a ]
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !8
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !8
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.backedge.i, %bb.c
  %.035.i = phi i1 [ false, %bb.c ], [ %.136.i, %.critedge.backedge.i ]
  %.sroa.021.1.i = phi double [ %.sroa.021.0.i, %bb.c ], [ %i.aj, %.critedge.backedge.i ]
  %.sroa.8.1.i = phi double [ %.sroa.8.0.i, %bb.c ], [ %i.ak, %.critedge.backedge.i ]
  %i.ag = phi double [ 1.000000e+00, %bb.c ], [ %i.as, %.critedge.backedge.i ]
  %i.ah = fmul double %i.ag, 5.000000e-01         ; 3 uses
  %i.ai = call { double, double } @Bezier(ptr noundef nonnull %6, double noundef %i.ah, ptr noundef %.039.i, ptr noundef %.040.i) #15 ; 2 uses
  %i.aj = extractvalue { double, double } %i.ai, 0 ; 3 uses
  %i.ak = extractvalue { double, double } %i.ai, 1 ; 3 uses
  %i.al = call zeroext i1 %i.ab(ptr noundef nonnull %0, double %i.aj, double %i.ak) #15, !inline_history !43
  br i1 %i.al, label %.loopexit44.loopexit.i, label %bb.d

.loopexit44.loopexit.i:                           ; preds = %.critedge.i
  store double %i.ah, ptr %.038.i, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) %4, i64 64, i1 false)
  br label %.loopexit44.i

bb.d:                                             ; preds = %.critedge.i
  store double %i.ah, ptr %.037.i, align 8, !tbaa !8
  br label %.loopexit44.i

.loopexit44.i:                                    ; preds = %bb.d, %.loopexit44.loopexit.i
  %.136.i = phi i1 [ %.035.i, %bb.d ], [ true, %.loopexit44.loopexit.i ] ; 2 uses
  %i.am = fsub double %.sroa.021.1.i, %i.aj
  %i.an = call double @llvm.fabs.f64(double %i.am)
  %i.ao = fcmp ogt double %i.an, 5.000000e-01
  br i1 %i.ao, label %.critedge.backedge.i, label %bb.e

bb.e:                                             ; preds = %.loopexit44.i
  %i.ap = fsub double %.sroa.8.1.i, %i.ak
  %i.aq = call double @llvm.fabs.f64(double %i.ap)
  %i.ar = fcmp ogt double %i.aq, 5.000000e-01
  br i1 %i.ar, label %.critedge.backedge.i, label %bezier_clip.exit

.critedge.backedge.i:                             ; preds = %bb.e, %.loopexit44.i
  %.0..0..0..0..0..0.41.pre.i = load double, ptr %i.b, align 8, !tbaa !8
  %.0..0..0..0..0..0..pre.i = load double, ptr %i.a, align 8, !tbaa !8
  %i.as = fadd double %.0..0..0..0..0..0.41.pre.i, %.0..0..0..0..0..0..pre.i
  br label %.critedge.i, !llvm.loop !10

bezier_clip.exit:                                 ; preds = %bb.e
  %..i = select i1 %.136.i, ptr %5, ptr %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) %..i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 4 uses
  %i.av = load <2 x double>, ptr %6, align 16, !tbaa !8
  %i.aw = load <2 x double>, ptr %i.au, align 8, !tbaa !8
  %i.ax = fadd <2 x double> %i.av, %i.aw
  store <2 x double> %i.ax, ptr %2, align 8, !tbaa !8
  %i.ay = load <2 x double>, ptr %i.l, align 16, !tbaa !8
  %i.az = load <2 x double>, ptr %i.au, align 8, !tbaa !8
  %i.ba = fadd <2 x double> %i.ay, %i.az
  store <2 x double> %i.ba, ptr %i.k, align 8, !tbaa !8
  %i.bb = load <2 x double>, ptr %i.p, align 16, !tbaa !8
  %i.bc = load <2 x double>, ptr %i.au, align 8, !tbaa !8
  %i.bd = fadd <2 x double> %i.bb, %i.bc
  store <2 x double> %i.bd, ptr %i.o, align 8, !tbaa !8
  %i.be = load <2 x double>, ptr %i.t, align 16, !tbaa !8
  %i.bf = load <2 x double>, ptr %i.au, align 8, !tbaa !8
  %i.bg = fadd <2 x double> %i.be, %i.bf
  store <2 x double> %i.bg, ptr %i.s, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  store double %i.f, ptr %i.bh, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @new_spline(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.d, %bb.c ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.f = load i8, ptr %i.e, align 8, !tbaa !51
  %.not22 = icmp eq i8 %i.f, 0
  br i1 %.not22, label %.critedge, label %bb.b, !llvm.loop !52

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !54
  br label %bb.f

bb.d:                                             ; preds = %.critedge
  %i.k = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #16 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %gv_alloc.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !57
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.3, i64 noundef 48) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_alloc.exit:                                    ; preds = %bb.d
  store ptr %i.k, ptr %i.h, align 8, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %.critedge._crit_edge, %gv_alloc.exit
  %i.o = phi ptr [ null, %gv_alloc.exit ], [ %.pre, %.critedge._crit_edge ] ; 2 uses
  %i.p = phi ptr [ %i.k, %gv_alloc.exit ], [ %i.i, %.critedge._crit_edge ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !59   ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 4 uses
  %i.t = icmp ugt i64 %i.s, 329406144173384850
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !57
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.2, i64 noundef %i.s, i64 noundef 56) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = mul i64 %i.r, 56                         ; 2 uses
  %i.x = mul nuw i64 %i.s, 56                     ; 3 uses
  %i.y = icmp eq i64 %i.s, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef %i.o) #15
  br label %gv_recalloc.exit

bb.j:                                             ; preds = %bb.h
  %i.z = tail call ptr @realloc(ptr noundef %i.o, i64 noundef range(i64 0, -15) %i.x) #19 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %2

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !57
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.3, i64 noundef range(i64 0, -15) %i.x) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

2:                                                ; preds = %bb.j
  %3 = icmp ugt i64 %i.x, %i.w
  br i1 %3, label %bb.l, label %gv_recalloc.exit

bb.l:                                             ; preds = %2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.i, %2, %bb.l
  %.0.i.i = phi ptr [ null, %bb.i ], [ %i.z, %bb.l ], [ %i.z, %2 ] ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 2 uses
  store ptr %.0.i.i, ptr %i.ag, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !59 ; 2 uses
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !59
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %gv_recalloc.exit
  %i.ak = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #16
  br label %gv_calloc.exit

bb.m:                                             ; preds = %gv_recalloc.exit
  %mul.ov.i = icmp ugt i64 %1, 1152921504606846975
  br i1 %mul.ov.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !57
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.2, i64 noundef %1, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.an = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef 16) #16 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.p, label %gv_calloc.exit

bb.p:                                             ; preds = %bb.o
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !57
  %i.aq = shl nuw i64 %1, 4
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.3, i64 noundef %i.aq) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.o
  %i.as = phi ptr [ %i.ak, %.thread.i ], [ %i.an, %bb.o ]
  %i.at = getelementptr inbounds nuw [56 x i8], ptr %.0.i.i, i64 %i.ai ; 4 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %1, ptr %i.au, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, i8 0, i64 40, i1 false)
  ret ptr %i.at
}

; Function Attrs: nounwind uwtable
define void @clip_and_install(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %5 = alloca %union.inside_t, align 8            ; 7 uses
  %6 = alloca %union.inside_t, align 8            ; 7 uses
  %7 = alloca [4 x %struct.pointf_s], align 16    ; 8 uses
  %i.c = load i32, ptr %0, align 8
  %i.d = and i32 %i.c, 3
  %i.e = icmp eq i32 %i.d, 3
  %i.f = select i1 %i.e, i64 56, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 6 uses
  %i.i = tail call ptr @agraphof(ptr noundef %i.h) #15
  %i.j = tail call ptr @new_spline(ptr noundef nonnull %0, i64 noundef %3) ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0116 = phi ptr [ %0, %bb.a ], [ %i.n, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0116, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.p = load i8, ptr %i.o, align 8, !tbaa !51
  %.not129 = icmp eq i8 %i.p, 0
  br i1 %.not129, label %.critedge, label %bb.b, !llvm.loop !67

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !68, !range !70, !noundef !71
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.w = load i32, ptr %i.v, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 360
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !72
  %i.ab = icmp eq i32 %i.w, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 364
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 364
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !73
  %i.ag = icmp sgt i32 %i.ad, %i.af               ; 2 uses
  %spec.select = select i1 %i.ag, ptr %1, ptr %i.h
  %spec.select140 = select i1 %i.ag, ptr %i.h, ptr %1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.critedge
  %.0119 = phi ptr [ %i.h, %.critedge ], [ %i.h, %bb.d ], [ %spec.select, %bb.e ] ; 4 uses
  %.0111 = phi ptr [ %1, %.critedge ], [ %1, %bb.d ], [ %spec.select140, %bb.e ] ; 4 uses
  %i.ah = load i32, ptr %.0116, align 8
  %i.ai = and i32 %i.ah, 3
  %i.aj = icmp eq i32 %i.ai, 3
  %i.ak = select i1 %i.aj, i64 56, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63
  %i.an = icmp eq ptr %.0119, %i.am               ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %. = select i1 %i.an, i64 58, i64 106
  %.202 = select i1 %i.an, i64 106, i64 58
  %.203 = select i1 %i.an, ptr %i.ap, ptr %i.ao
  %.204 = select i1 %i.an, ptr %i.ao, ptr %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %.202
  %.0112.in = load i8, ptr %i.aq, align 2, !tbaa !74, !range !70, !noundef !71
  %.0115.in = load i8, ptr %i.ar, align 2, !tbaa !74, !range !70, !noundef !71
  %.0117 = load ptr, ptr %.204, align 8, !tbaa !75
  %.0118 = load ptr, ptr %.203, align 8, !tbaa !75
  %.not130 = icmp eq i8 %.0112.in, 0
  br i1 %.not130, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.0119, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18 ; 2 uses
  %.not131 = icmp eq ptr %i.av, null
  br i1 %.not131, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !38
  %.not132 = icmp eq ptr %i.az, null
  br i1 %.not132, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ba, i8 0, i64 72, i1 false)
  store ptr %.0119, ptr %5, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0117, ptr %i.bb, align 8, !tbaa !76
  %i.bc = add i64 %3, -4                          ; 2 uses
  %.not188 = icmp eq i64 %i.bc, 0
  br i1 %.not188, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %storemerge167 = phi i64 [ %i.bt, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.bd = getelementptr [16 x i8], ptr %2, i64 %storemerge167
  %i.be = getelementptr i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load <2 x double>, ptr %i.be, align 8, !tbaa !8
  %i.bi = load <2 x double>, ptr %i.bg, align 8, !tbaa !8
  %i.bj = fsub <2 x double> %i.bh, %i.bi          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.bq = extractelement <2 x double> %i.bj, i64 0
  %i.br = extractelement <2 x double> %i.bj, i64 1
  %i.bs = call zeroext i1 %i.bp(ptr noundef nonnull %5, double %i.bq, double %i.br) #15
  br i1 %i.bs, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %i.bt = add i64 %storemerge167, 3               ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %i.bc
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.j, %.lr.ph, %bb.i
  %storemerge.lcssa = phi i64 [ 0, %bb.i ], [ %storemerge167, %.lr.ph ], [ %i.bt, %bb.j ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %storemerge.lcssa
  call fastcc void @shape_clip0(ptr noundef %5, ptr noundef nonnull %.0119, ptr noundef %i.bv, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.h, %._crit_edge
  %.0163 = phi i64 [ %storemerge.lcssa, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  %.not133 = icmp eq i8 %.0115.in, 0
  br i1 %.not133, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.0111, i64 16 ; 2 uses
end_hunk_0
