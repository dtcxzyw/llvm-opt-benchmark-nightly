inline.NumInlined: 698
inline.NumDeleted: 221
begin_hunk_0_@_ZN4Mesh10set_boundsEi
; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN5State12set_timestepEdd(ptr noundef nonnull align 8 captures(none) dereferenceable(368) %0, double noundef %1, double noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @cpu_timer_start(ptr noundef nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = trunc i64 %i.f to i32
  call void @_ZN4Mesh10set_boundsEi(ptr noundef nonnull align 8 dereferenceable(2288) %i.d, i32 noundef %i.g)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !19
  call void @_ZN4Mesh10get_boundsERiS0_(ptr noundef nonnull align 8 dereferenceable(2288) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !19   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1360
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1352
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 1048
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 1072
  %i.x = sext i32 %i.i to i64
  %wide.trip.count = sext i32 %i.j to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.y = fcmp olt double %.2, 1.000000e+03
  br i1 %i.y, label %bb.e, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %.024 = phi double [ 1.000000e+03, %.lr.ph ], [ %.2, %bb.d ] ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !74
  %i.ah = fmul double %1, %i.ag
  %i.ai = call double @sqrt(double noundef %i.ah) #21, !tbaa !4 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !74
  %i.al = call double @llvm.fabs.f64(double %i.ak)
  %i.am = fadd double %i.ai, %i.al
  %i.an = sext i32 %i.ae to i64                   ; 2 uses
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !74
  %i.ar = fdiv double %i.am, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.at = load double, ptr %i.as, align 8, !tbaa !74
  %i.au = call double @llvm.fabs.f64(double %i.at)
  %i.av = fadd double %i.ai, %i.au
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.an
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !74
  %i.az = fdiv double %i.av, %i.ay
  %i.ba = fadd double %i.ar, %i.az
  %i.bb = fdiv double %2, %i.ba                   ; 2 uses
  %i.bc = fcmp olt double %i.bb, %.024
  %.1 = select i1 %i.bc, double %i.bb, double %.024
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi double [ %.1, %bb.c ], [ %.024, %bb.b ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !83

bb.e:                                             ; preds = %._crit_edge
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.e, %._crit_edge
  %i.bd = phi double [ %.2, %bb.e ], [ 1.000000e+03, %._crit_edge ], [ 1.000000e+03, %bb.a ]
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !63
  %i.be = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !74
  %i.bh = fadd double %i.be, %i.bg
  store double %i.bh, ptr %i.bf, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret double %i.bd
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State11fill_circleEddd(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1160 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1416 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1440 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1464 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1488 ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !63   ; 6 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 3 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53   ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.s = add i64 %i.i, -1                         ; 2 uses
  %i.t = and i64 %i.s, 4294967295
  %i.u = icmp eq i64 %i.t, 4294967295
  %i.v = icmp ugt i64 %i.s, 4294967295
  %i.w = or i1 %i.u, %i.v
  br i1 %i.w, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.x = sub i64 %i.o, %i.l
  %diff.check = icmp ult i64 %i.x, 32
  %i.y = sub i64 %i.r, %i.l
  %diff.check103 = icmp ult i64 %i.y, 32
  %conflict.rdx = or i1 %diff.check, %diff.check103
  %i.z = sub i64 %i.r, %i.o
  %diff.check104 = icmp ult i64 %i.z, 32
  %conflict.rdx105 = or i1 %conflict.rdx, %diff.check104
  br i1 %conflict.rdx105, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 8589934588               ; 4 uses
  %i.aa = trunc i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ab, align 8, !tbaa !74
  store <2 x double> %broadcast.splat, ptr %i.ac, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x double> zeroinitializer, ptr %i.ad, align 8, !tbaa !74
  store <2 x double> zeroinitializer, ptr %i.ae, align 8, !tbaa !74
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x double> zeroinitializer, ptr %i.af, align 8, !tbaa !74
  store <2 x double> zeroinitializer, ptr %i.ag, align 8, !tbaa !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.03886.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.aa, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  tail call void @_ZN4Mesh12kdtree_setupEv(ptr noundef nonnull align 8 dereferenceable(2288) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !63  ; 9 uses
  %i.aj = icmp ugt i64 %i.ai, 2305843009213693951
  br i1 %i.aj, label %.noexc, label %.noexc42

.noexc:                                           ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #22
  unreachable

.noexc42:                                         ; preds = %._crit_edge
  %.not.i.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.ai, 2                ; 3 uses
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #23 ; 14 uses
  store i32 0, ptr %i.al, align 4, !tbaa !4
  %i.am = add nsw i64 %i.ai, -1                   ; 3 uses
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.an, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ao = phi i64 [ %i.at, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %.03886 = phi i32 [ %i.as, %scalar.ph ], [ %.03886.ph, %scalar.ph.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ao
  store double %3, ptr %i.ap, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ao
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ao
  store double 0.000000e+00, ptr %i.ar, align 8, !tbaa !74
  %i.as = add i32 %.03886, 1                      ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp ugt i64 %i.i, %i.at
  br i1 %i.au, label %scalar.ph, label %._crit_edge, !llvm.loop !85

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %.noexc42
  %i.av = getelementptr i8, ptr %i.al, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !4
  %i.aw = icmp samesign ugt i64 %i.ai, 1152921504606846975
  br i1 %i.aw, label %bb.b, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #22
          to label %.noexc46 unwind label %bb.d

.noexc46:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.noexc42, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ax = shl nuw nsw i64 %i.ai, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #23
          to label %.noexc47 unwind label %bb.d   ; 8 uses

.noexc47:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  store double 0.000000e+00, ptr %i.ay, align 8, !tbaa !74
  br i1 %i.an, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc47
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.idx.i.i.i.i.i.i.i44 = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %.idx.i.i.i.i.i.i.i44, i1 false), !tbaa !74
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc47
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 784
  %i.bc = trunc i64 %i.ai to i32
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !67
  invoke void @KDTree_QueryCircleInterior_Double(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.al, double noundef %1, i32 noundef %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg)
          to label %.preheader85 unwind label %bb.e

.preheader85:                                     ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %.preheader85
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !52 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.bh to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bl = icmp ult i32 %i.bh, 4
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph88.new

.lr.ph88.new:                                     ; preds = %.lr.ph88
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.g

._crit_edge89.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge89, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge89.loopexit.unr-lcssa, %.lr.ph88
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next.3, %._crit_edge89.loopexit.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod107)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.epil
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bo
  store double %2, ptr %i.bp, align 8, !tbaa !74
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge89, label %bb.c, !llvm.loop !86

._crit_edge89:                                    ; preds = %._crit_edge89.loopexit.unr-lcssa, %bb.c, %.preheader85
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 784
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !63
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !67
  invoke void @KDTree_QueryCircleIntersectWeighted_Double(ptr noundef nonnull %i.br, ptr noundef nonnull %i.a, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ay, double noundef %1, i32 noundef %i.bt, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx)
          to label %.preheader unwind label %.thread

.preheader:                                       ; preds = %._crit_edge89
  %i.by = load i32, ptr %i.a, align 4, !tbaa !4   ; 4 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %.preheader
  %i.ca = fsub double %2, %3                      ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !52 ; 3 uses
  %wide.trip.count97 = zext nneg i32 %i.by to i64 ; 2 uses
  %xtraiter109 = and i64 %wide.trip.count97, 1
  %i.cd = icmp eq i32 %i.by, 1
  br i1 %i.cd, label %.epil.preheader108, label %.lr.ph91.new

.lr.ph91.new:                                     ; preds = %.lr.ph91
  %unroll_iter113 = and i64 %wide.trip.count97, 2147483646
  br label %bb.h

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %bb.b
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52

.thread:                                          ; preds = %._crit_edge92, %._crit_edge89
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %lpad.phi83 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.e ]
  %.idx = shl nuw nsw i64 %i.ai, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %.idx) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52

bb.g:                                             ; preds = %bb.g, %.lr.ph88.new
  %indvars.iv = phi i64 [ 0, %.lr.ph88.new ], [ %indvars.iv.next.3, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph88.new ], [ %niter.next.3, %bb.g ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ch
  store double %2, ptr %i.ci, align 8, !tbaa !74
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.cm
  store double %2, ptr %i.cn, align 8, !tbaa !74
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.cr
  store double %2, ptr %i.cs, align 8, !tbaa !74
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.cw
  store double %2, ptr %i.cx, align 8, !tbaa !74
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge89.loopexit.unr-lcssa, label %bb.g, !llvm.loop !88

._crit_edge92.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod111.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %._crit_edge92, label %.epil.preheader108

.epil.preheader108:                               ; preds = %._crit_edge92.loopexit.unr-lcssa, %.lr.ph91
  %indvars.iv94.epil.init = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next95.1, %._crit_edge92.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod112 = trunc i32 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod112)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv94.epil.init
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !74
  %i.da = fmul double %i.ca, %i.cz
  %i.db = fadd double %3, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv94.epil.init
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.de
  store double %i.db, ptr %i.df, align 8, !tbaa !74
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %.epil.preheader108, %._crit_edge92.loopexit.unr-lcssa, %.preheader
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 784
  invoke void @KDTree_Destroy(ptr noundef nonnull %i.dh)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %.thread

bb.h:                                             ; preds = %bb.h, %.lr.ph91.new
  %indvars.iv94 = phi i64 [ 0, %.lr.ph91.new ], [ %indvars.iv.next95.1, %bb.h ] ; 4 uses
  %niter114 = phi i64 [ 0, %.lr.ph91.new ], [ %niter114.next.1, %bb.h ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv94
  %i.dj = load double, ptr %i.di, align 8, !tbaa !74
  %i.dk = fmul double %i.ca, %i.dj
  %i.dl = fadd double %3, %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv94
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.do
  store double %i.dl, ptr %i.dp, align 8, !tbaa !74
  %indvars.iv.next95 = or disjoint i64 %indvars.iv94, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next95
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !74
  %i.ds = fmul double %i.ca, %i.dr
  %i.dt = fadd double %3, %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next95
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.dw
  store double %i.dt, ptr %i.dx, align 8, !tbaa !74
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %niter114.next.1 = add i64 %niter114, 2         ; 2 uses
  %niter114.ncmp.1 = icmp eq i64 %niter114.next.1, %unroll_iter113
  br i1 %niter114.ncmp.1, label %._crit_edge92.loopexit.unr-lcssa, label %bb.h, !llvm.loop !89

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge92
  %.idx105 = shl nuw nsw i64 %i.ai, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %.idx105) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ak) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit52:                  ; preds = %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.d ], [ %lpad.phi83, %bb.f ]
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ak) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn
}

declare void @_ZN4Mesh12kdtree_setupEv(ptr noundef nonnull align 8 dereferenceable(2288)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @KDTree_QueryCircleInterior_Double(ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @KDTree_QueryCircleIntersectWeighted_Double(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @KDTree_Destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #24
  br label %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit

_ZNSt12_Vector_baseIdSaIdEED2Ev.exit:             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State13state_reorderESt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = load ptr, ptr %1, align 8, !tbaa !64
  %i.d = tail call noundef ptr @_ZN10MallocPlus14memory_reorderEPdPi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.b, ptr noundef nonnull %i.c)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = load ptr, ptr %1, align 8, !tbaa !64
  %i.h = tail call noundef ptr @_ZN10MallocPlus14memory_reorderEPdPi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.f, ptr noundef nonnull %i.g)
  store ptr %i.h, ptr %i.e, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = load ptr, ptr %1, align 8, !tbaa !64
  %i.l = tail call noundef ptr @_ZN10MallocPlus14memory_reorderEPdPi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.j, ptr noundef nonnull %i.k)
  store ptr %i.l, ptr %i.i, align 8, !tbaa !54
  ret void
}

declare noundef ptr @_ZN10MallocPlus14memory_reorderEPdPi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State10rezone_allEiiSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.timeval, align 8            ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @cpu_timer_start(ptr noundef nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !64     ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.thread6, label %bb.b

.thread6:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds i8, ptr null, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.l, label %.noexc.i.i, label %bb.c, !prof !92

.noexc.i.i:                                       ; preds = %bb.b
  call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23 ; 5 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !91
  %i.q = icmp samesign ugt i64 %i.h, 4
  br i1 %i.q, label %bb.d, label %bb.e, !prof !93

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.h, 4
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.e, align 4, !tbaa !4
  store i32 %i.s, ptr %i.m, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %.thread6, %bb.d, %bb.e, %bb.f
  %i.t = phi ptr [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ], [ %i.k, %.thread6 ] ; 2 uses
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.j, %.thread6 ]
  %i.v = phi ptr [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.i, %.thread6 ]
  store ptr %i.u, ptr %i.v, align 8, !tbaa !65
  invoke void @_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus(ptr noundef nonnull align 8 dereferenceable(2288) %i.b, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.w = load ptr, ptr %5, align 8, !tbaa !64     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !91
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  %i.ab = call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull @.str)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !52
  %i.ad = call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull @.str.1)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !53
  %i.af = call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull @.str.2)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !54
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !63
  %i.ah = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !74
  %i.ak = fadd double %i.ah, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %5, align 8, !tbaa !64    ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIiSaIiEED2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !91
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit5

_ZNSt6vectorIiSaIiEED2Ev.exit5:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.al
}

declare void @_ZN4Mesh10rezone_allEiiSt6vectorIiSaIiEEiR10MallocPlus(ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State22calc_finite_differenceEd(ptr noundef nonnull align 8 dereferenceable(368) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @cpu_timer_start(ptr noundef nonnull %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1176 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !63
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.f, ptr %i.g, align 8, !tbaa !63
  br label %bb.c
end_hunk_0
