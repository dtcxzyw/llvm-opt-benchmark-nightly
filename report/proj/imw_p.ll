Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/imw_p?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@_Z34pj_projection_specific_setup_imw_pP8PJconsts:bb.a
  %i.ed = extractelement <2 x double> %i.cn, i64 0 ; 2 uses
  %i.ee = fadd double %i.ed, %i.ec                ; 3 uses
  %i.ef = fsub double %i.ee, %.096
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double %i.ef, ptr %i.eg, align 8, !tbaa !48
  %i.eh = fdiv double 1.000000e+00, %i.dw         ; 3 uses
  %i.ei = fsub double %i.ee, %i.ed
  %i.ej = fmul double %i.eh, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.ej, ptr %i.ek, align 8, !tbaa !58
  %i.el = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.em = insertelement <2 x double> %i.el, double %.097, i64 1
  %i.en = fneg <2 x double> %i.em
  %i.eo = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x double> %i.ep, %i.en
  %i.er = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.cn, <2 x double> %i.eq)
  %i.eu = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x double> %i.ev, %i.et
  store <2 x double> %i.ew, ptr %i.a, align 8, !tbaa !44
  %i.ex = fmul double %i.dy, %i.eh
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.ex, ptr %i.ey, align 8, !tbaa !59
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15imw_p_e_forward5PJ_LPP8PJconsts, ptr %i.ez, align 8, !tbaa !60
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15imw_p_e_inverse5PJ_XYP8PJconsts, ptr %i.fa, align 8, !tbaa !61
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL19pj_imw_p_destructorP8PJconstsi, ptr %i.fb, align 8, !tbaa !62
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZL19pj_imw_p_destructorP8PJconstsi.exit, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.aq, %_ZL19pj_imw_p_destructorP8PJconstsi.exit ], [ %0, %bb.y ], [ %i.i, %bb.d ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_Z7pj_enfnd(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL19pj_imw_p_destructorP8PJconstsi(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.b
  %i.g = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %.sink.split ]
  ret ptr %.0
}

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare noundef double @_Z7pj_mlfndddPKd(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15imw_p_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call fastcc { double, double } @_ZL7loc_for5PJ_LPP8PJconstsPd(double %0, double %1, ptr noundef %2, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret { double, double } %i.b
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15imw_p_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %union.PJ_COORD, align 8            ; 5 uses
  %4 = alloca %union.PJ_COORD, align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load double, ptr %i.d, align 8, !tbaa !42 ; 2 uses
  %i.f = tail call double @cos(double noundef %i.e) #8
  %i.g = fdiv double %0, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.backedge, %bb.a
  %.035 = phi i32 [ 0, %bb.a ], [ %i.ae, %.critedge2.backedge ] ; 2 uses
  %.sroa.8.0 = phi double [ %i.e, %bb.a ], [ %.sroa.8.1, %.critedge2.backedge ] ; 3 uses
  %.sroa.018.0 = phi double [ %i.g, %bb.a ], [ %.sroa.018.1, %.critedge2.backedge ] ; 4 uses
  %i.i = call fastcc { double, double } @_ZL7loc_for5PJ_LPP8PJconstsPd(double %.sroa.018.0, double %.sroa.8.0, ptr noundef %2, ptr noundef %i.a) ; 2 uses
  %i.j = extractvalue { double, double } %i.i, 0  ; 4 uses
  %i.k = extractvalue { double, double } %i.i, 1  ; 3 uses
  %i.l = load double, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %i.m = fsub double %i.k, %i.l                   ; 2 uses
  %i.n = fcmp oeq double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge2
  %i.o = fsub double %i.k, %1
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp ogt double %i.p, 1.000000e-10
  br i1 %i.q, label %bb.g, label %bb.d

bb.c:                                             ; preds = %.critedge2
  %i.r = load double, ptr %i.h, align 8, !tbaa !41 ; 2 uses
  %i.s = fsub double %.sroa.8.0, %i.r
  %i.t = fsub double %1, %i.l
  %i.u = fmul double %i.t, %i.s
  %i.v = fdiv double %i.u, %i.m
  %i.w = fadd double %i.r, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.8.1 = phi double [ %i.w, %bb.c ], [ %.sroa.8.0, %bb.b ] ; 2 uses
  %i.x = fcmp une double %i.j, 0.000000e+00
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = fsub double %i.j, %0
  %i.z = tail call double @llvm.fabs.f64(double %i.y)
  %i.aa = fcmp ogt double %i.z, 1.000000e-10
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = fmul double %0, %.sroa.018.0
  %i.ac = fdiv double %i.ab, %i.j
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.ad = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %.sroa.030.0.copyload = load double, ptr %3, align 8, !tbaa !44
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.432.0.copyload = load double, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.critedge.thread

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.018.1 = phi double [ %i.ac, %bb.f ], [ %.sroa.018.0, %bb.e ], [ %.sroa.018.0, %bb.d ] ; 2 uses
  %i.ae = add nuw nsw i32 %.035, 1
  %exitcond.not = icmp eq i32 %.035, 999
  br i1 %exitcond.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = fsub double %i.j, %0
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp ogt double %i.ag, 1.000000e-10
  br i1 %i.ah, label %.critedge2.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = fsub double %i.k, %1
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp ogt double %i.aj, 1.000000e-10
  br i1 %i.ak, label %.critedge2.backedge, label %.critedge.thread

.critedge2.backedge:                              ; preds = %bb.j, %bb.i
  br label %.critedge2

.critedge:                                        ; preds = %bb.h
  %i.al = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %4)
  %.sroa.030.0.copyload31 = load double, ptr %4, align 8, !tbaa !44
  %.sroa.432.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.432.0.copyload34 = load double, ptr %.sroa.432.0..sroa_idx33, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.j, %bb.g, %.critedge
  %.sroa.030.2 = phi double [ %.sroa.030.0.copyload31, %.critedge ], [ %.sroa.030.0.copyload, %bb.g ], [ %.sroa.018.1, %bb.j ]
  %.sroa.432.2 = phi double [ %.sroa.432.0.copyload34, %.critedge ], [ %.sroa.432.0.copyload, %bb.g ], [ %.sroa.8.1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.030.2, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.432.2, 1
  ret { double, double } %.fca.1.insert
}

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc { double, double } @_ZL7loc_for5PJ_LPP8PJconstsPd(double %0, double %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 10 uses
  %i.c = fcmp oeq double %1, 0.000000e+00
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @sin(double noundef %1) #8 ; 3 uses
  %i.e = tail call double @cos(double noundef %1) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = tail call noundef double @_Z7pj_mlfndddPKd(double noundef %1, double noundef %i.d, double noundef %i.e, ptr noundef %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load <2 x double>, ptr %i.b, align 8, !tbaa !44
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !44
  %i.l = insertelement <2 x double> poison, double %i.h, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.m, <2 x double> %i.j) ; 2 uses
  %i.o = tail call double @tan(double noundef %1) #8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.q = load double, ptr %i.p, align 8, !tbaa !45
  %i.r = fneg double %i.d
  %i.s = fmul double %i.q, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.d, double 1.000000e+00)
  %i.u = tail call double @sqrt(double noundef %i.t) #8
  %i.v = fmul double %i.o, %i.u
  %i.w = fdiv double 1.000000e+00, %i.v           ; 8 uses
  %i.x = extractelement <2 x double> %i.n, i64 1  ; 2 uses
  %i.y = fneg double %i.x
  %i.z = fmul double %i.x, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.z)
  %i.ab = tail call double @sqrt(double noundef %i.aa) #8 ; 2 uses
  %i.ac = fcmp olt double %1, 0.000000e+00
  %i.ad = fneg double %i.ab
  %.0 = select i1 %i.ac, double %i.ad, double %i.ab
  %i.ae = extractelement <2 x double> %i.n, i64 0
  %i.af = fsub double %i.ae, %i.w
  %i.ag = fadd double %.0, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.al = load double, ptr %i.ak, align 8, !tbaa !48
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.an = load double, ptr %i.am, align 8, !tbaa !47
  %i.ao = fmul double %0, %i.an                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !63 ; 2 uses
  %i.ar = tail call double @sin(double noundef %i.ao) #8
  %i.as = fmul double %i.aq, %i.ar                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.au = load double, ptr %i.at, align 8, !tbaa !48
  %i.av = tail call double @cos(double noundef %i.ao) #8
  %i.aw = fsub double 1.000000e+00, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.aw, double %i.au) ; 2 uses
  %i.ay = icmp eq i32 %i.ai, 1
  br i1 %i.ay, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.07683 = phi double [ %i.al, %.thread ], [ %i.ax, %bb.c ]
  %.07781 = phi double [ %0, %.thread ], [ %i.as, %bb.c ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ba = load double, ptr %i.az, align 8, !tbaa !46
  %i.bb = fmul double %0, %i.ba                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !64 ; 2 uses
  %i.be = tail call double @sin(double noundef %i.bb) #8
  %i.bf = fmul double %i.bd, %i.be
  %i.bg = tail call double @cos(double noundef %i.bb) #8
  %i.bh = fsub double 1.000000e+00, %i.bg
  %i.bi = fmul double %i.bd, %i.bh
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.07684 = phi double [ %.07683, %bb.d ], [ %i.ax, %bb.c ]
  %.07782 = phi double [ %.07781, %bb.d ], [ %i.as, %bb.c ]
  %storemerge = phi double [ %i.bi, %bb.d ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %.075 = phi double [ %i.bf, %bb.d ], [ %0, %bb.c ] ; 2 uses
  store double %storemerge, ptr %3, align 8, !tbaa !44
  %i.bj = fsub double %.07782, %.075
  %i.bk = fsub double %.07684, %storemerge
  %i.bl = fdiv double %i.bj, %i.bk                ; 4 uses
  %i.bm = fadd double %i.w, %i.ag                 ; 2 uses
  %i.bn = fsub double %i.bm, %storemerge
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bn, double %.075) ; 3 uses
  %i.bp = fmul double %i.w, %i.w
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double 1.000000e+00) ; 2 uses
  %i.br = fneg double %i.bo
  %i.bs = fmul double %i.bo, %i.br
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bq, double %i.bs)
  %i.bu = tail call double @sqrt(double noundef %i.bt) #8
  %i.bv = fmul double %i.bl, %i.bu                ; 2 uses
  %i.bw = fcmp ogt double %1, 0.000000e+00        ; 2 uses
  %i.bx = fneg double %i.bv
  %.sroa.070.0 = select i1 %i.bw, double %i.bx, double %i.bv
  %i.by = fadd double %i.bo, %.sroa.070.0
  %i.bz = fdiv double %i.by, %i.bq                ; 3 uses
  %i.ca = fneg double %i.bz
  %i.cb = fmul double %i.bz, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.cb)
  %i.cd = tail call double @sqrt(double noundef %i.cc) #8 ; 2 uses
  %i.ce = fneg double %i.cd
  %.sroa.9.0 = select i1 %i.bw, double %i.ce, double %i.cd
  %i.cf = fadd double %i.bm, %.sroa.9.0
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.070.1 = phi double [ %i.bz, %bb.e ], [ %0, %bb.a ]
  %.sroa.9.1 = phi double [ %i.cf, %bb.e ], [ 0.000000e+00, %bb.a ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.070.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.9.1, 1
  ret { double, double } %.fca.1.insert
}

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !8, i64 88}
!38 = !{!"p1 double", !8, i64 0}
!39 = !{!"_ZTSN12_GLOBAL__N_113pj_imw_p_dataE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !38, i64 96, !4, i64 104}
!40 = !{!39, !38, i64 96}
!41 = !{!39, !14, i64 72}
!42 = !{!39, !14, i64 80}
!43 = !{!39, !4, i64 104}
!44 = !{!14, !14, i64 0}
!45 = !{!36, !14, i64 216}
!46 = !{!39, !14, i64 48}
!47 = !{!39, !14, i64 56}
!48 = !{!39, !14, i64 64}
!49 = !{!36, !10, i64 8}
!50 = !{!36, !10, i64 16}
!51 = !{!36, !5, i64 360}
!52 = !{!36, !15, i64 380}
!53 = !{!36, !15, i64 384}
!54 = !{!36, !14, i64 288}
!55 = !{!36, !9, i64 0}
!56 = !{!36, !11, i64 24}
!57 = !{!39, !14, i64 88}
!58 = !{!39, !14, i64 16}
!59 = !{!39, !14, i64 24}
!60 = !{!36, !8, i64 104}
!61 = !{!36, !8, i64 112}
!62 = !{!36, !8, i64 152}
!63 = !{!39, !14, i64 40}
!64 = !{!39, !14, i64 32}
end_hunk_0
