inline.NumInlined: 13
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pic_begin_page:bb.a
  %.0.i = phi double [ %i.v, %bb.e ], [ 3.000000e+00, %bb.d ]
  %.046 = select i1 %i.n, double %i.o, double %i.p ; 2 uses
  %i.w = tail call double @pow(double noundef 1.000000e+01, double noundef %.0.i) #9 ; 2 uses
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, double noundef %.0, double noundef %.046) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, double noundef %i.w, double noundef %i.w) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.24) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.35) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.36, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, ptr noundef nonnull @pic_comments) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, double noundef %.046, double noundef %.0) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.41) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pic_end_page(ptr noundef %0) #0 {
bb.a:
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.43) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pic_textspan(ptr noundef %0, double %1, double %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = load double, ptr %i.c, align 8, !tbaa !46 ; 3 uses
  switch i8 %i.b, label %bb.c [
    i8 108, label %._crit_edge
    i8 114, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double %1, %i.d
  br label %._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.f = fmul double %i.d, 5.000000e-01
  %i.g = fsub double %1, %i.f
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.036.0 = phi double [ %i.g, %bb.c ], [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !48 ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !51   ; 7 uses
  %.not = icmp eq ptr %i.l, null
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %.pre70 = load ptr, ptr %.phi.trans.insert69, align 8, !tbaa !39 ; 4 uses
  br i1 %.not, label %._crit_edge68, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.m = icmp eq ptr %.pre70, null
  br i1 %i.m, label %font_name_eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %.pre70, align 8, !tbaa !40 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %font_name_eq.exit.thread, label %font_name_eq.exit

font_name_eq.exit:                                ; preds = %bb.e
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.l) #10
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread83, label %font_name_eq.exit.thread

.thread83:                                        ; preds = %font_name_eq.exit
  %i.r = tail call nsz double @llvm.maxnum.f64(double %i.k, double 1.000000e+00)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 736
  br label %font_size_eq.exit

font_name_eq.exit.thread:                         ; preds = %bb.e, %bb.d, %font_name_eq.exit
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.l)
  %i.t = ptrtoint ptr %i.l to i64
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.i, %font_name_eq.exit.thread
  %.tr19.i = phi i64 [ %strlen.i, %font_name_eq.exit.thread ], [ %i.ae, %bb.i ] ; 4 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.u = add nuw nsw i64 %.01421.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, 33
  br i1 %exitcond.not.i, label %bb.h, label %bb.g, !llvm.loop !52

bb.g:                                             ; preds = %bb.f, %tailrecurse.i
  %.01421.i = phi i64 [ 0, %tailrecurse.i ], [ %i.u, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @fonttab, i64 %.01421.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %strlen.i.i.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %i.x), !inline_history !56 ; 2 uses
  %i.y = tail call i64 @llvm.umin.i64(i64 %.tr19.i, i64 %strlen.i.i.i)
  %i.z = tail call i32 @strncmp(ptr noundef nonnull readonly %i.l, ptr noundef nonnull readonly %i.x, i64 noundef %i.y) #10, !inline_history !56
  %.not.i.i.i.i = icmp eq i32 %i.z, 0
  %i.aa = icmp eq i64 %.tr19.i, %strlen.i.i.i
  %spec.select.i.i.i = and i1 %i.aa, %.not.i.i.i.i
  br i1 %spec.select.i.i.i, label %picfontname.exit, label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ab = trunc i64 %.tr19.i to i32
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.47, ptr noundef nonnull @picgen_msghdr, i32 noundef %i.ab, ptr noundef nonnull %i.l) #9, !inline_history !56
  %i.ac = tail call ptr @memrchr(ptr noundef nonnull %i.l, i32 noundef 45, i64 noundef %.tr19.i), !inline_history !56 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %picfontname.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.t
  br label %tailrecurse.i

picfontname.exit:                                 ; preds = %bb.h, %bb.g
  %.2.i = phi ptr [ %i.v, %bb.g ], [ @.str.48, %bb.h ]
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef nonnull %.2.i) #9
  %i.af = load ptr, ptr %.phi.trans.insert69, align 8, !tbaa !39 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.j, label %picfontname.exit..thread_crit_edge

picfontname.exit..thread_crit_edge:               ; preds = %picfontname.exit
  %.pre64 = load ptr, ptr %i.af, align 8, !tbaa !40
  br label %.thread

bb.j:                                             ; preds = %picfontname.exit
  %i.ah = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11 ; 2 uses
  %.not45 = icmp eq ptr %i.ah, null
  br i1 %.not45, label %._crit_edge71, label %.thread

._crit_edge71:                                    ; preds = %bb.j
  %.pre65.pre = load ptr, ptr %i.h, align 8, !tbaa !47
  br label %bb.k

.thread:                                          ; preds = %picfontname.exit..thread_crit_edge, %bb.j
  %i.ai = phi ptr [ null, %bb.j ], [ %.pre64, %picfontname.exit..thread_crit_edge ]
  %.04152 = phi ptr [ %i.ah, %bb.j ], [ %i.af, %picfontname.exit..thread_crit_edge ] ; 2 uses
  tail call void @free(ptr noundef %i.ai) #9
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !47  ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !51
  %i.al = tail call noalias ptr @strdup(ptr noundef %i.ak) #9
  store ptr %i.al, ptr %.04152, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge71, %.thread
  %.pre65 = phi ptr [ %i.aj, %.thread ], [ %.pre65.pre, %._crit_edge71 ]
  %.04153 = phi ptr [ %.04152, %.thread ], [ null, %._crit_edge71 ] ; 2 uses
  store ptr %.04153, ptr %.phi.trans.insert69, align 8, !tbaa !39
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %.pre65, i64 24
  %.pre67 = load double, ptr %.phi.trans.insert66, align 8, !tbaa !48
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge, %bb.k
  %i.am = phi ptr [ %.04153, %bb.k ], [ %.pre70, %._crit_edge ] ; 2 uses
  %i.an = phi double [ %.pre67, %bb.k ], [ %i.k, %._crit_edge ]
  %i.ao = tail call nsz double @llvm.maxnum.f64(double %i.an, double 1.000000e+00) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.aq = icmp eq ptr %i.am, null
  br i1 %i.aq, label %font_size_eq.exit.thread, label %font_size_eq.exit

font_size_eq.exit:                                ; preds = %.thread83, %._crit_edge68
  %i.ar = phi ptr [ %i.s, %.thread83 ], [ %i.ap, %._crit_edge68 ]
  %i.as = phi double [ %i.r, %.thread83 ], [ %i.ao, %._crit_edge68 ] ; 2 uses
  %i.at = phi ptr [ %.pre70, %.thread83 ], [ %i.am, %._crit_edge68 ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !57
  %i.aw = fsub double %i.as, %i.av
  %i.ax = tail call double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ugt double %i.ax, 5.000000e-01
  br i1 %i.ay, label %font_size_eq.exit.thread, label %bb.o

font_size_eq.exit.thread:                         ; preds = %._crit_edge68, %font_size_eq.exit
  %i.az = phi ptr [ %i.ap, %._crit_edge68 ], [ %i.ar, %font_size_eq.exit ] ; 2 uses
  %i.ba = phi double [ %i.ao, %._crit_edge68 ], [ %i.as, %font_size_eq.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 584
  %4 = load <4 x i32>, ptr %i.bb, align 8, !tbaa !43
  %5 = sitofp <4 x i32> %4 to <4 x double>        ; 2 uses
  %6 = shufflevector <4 x double> %5, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %7 = shufflevector <4 x double> %5, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %8 = fsub <2 x double> %6, %7                   ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !42
  %9 = icmp eq i32 %.sroa.6.0.copyload.i, 90
  %10 = extractelement <2 x double> %8, i64 0
  %11 = extractelement <2 x double> %8, i64 1
  %.v = select i1 %9, double %11, double %10
  %i.bc = fdiv double %.v, 7.200000e+01           ; 2 uses
  %i.bd = fcmp ogt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.l, label %get_fontscale.exit

bb.l:                                             ; preds = %font_size_eq.exit.thread
  %i.be = tail call double @llvm.log10.f64(double %i.bc) ; 2 uses
  %i.bf = fptosi double %i.be to i32
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = fsub double 3.000000e+00, %i.bg
  %i.bi = fadd double %i.be, %i.bh
  br label %get_fontscale.exit

get_fontscale.exit:                               ; preds = %font_size_eq.exit.thread, %bb.l
  %.0.i48 = phi double [ %i.bi, %bb.l ], [ 3.000000e+00, %font_size_eq.exit.thread ]
  %i.bj = tail call double @pow(double noundef 1.000000e+01, double noundef %.0.i48) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.45, double noundef %i.ba, double noundef %i.bj) #9
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !39 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.m, label %.thread55

bb.m:                                             ; preds = %get_fontscale.exit
  %i.bm = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11 ; 2 uses
  %.not46 = icmp eq ptr %i.bm, null
  br i1 %.not46, label %bb.n, label %.thread55

.thread55:                                        ; preds = %get_fontscale.exit, %bb.m
  %.058 = phi ptr [ %i.bm, %bb.m ], [ %i.bk, %get_fontscale.exit ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.058, i64 8
  store double %i.ba, ptr %i.bn, align 8, !tbaa !57
  br label %bb.n

bb.n:                                             ; preds = %.thread55, %bb.m
  %.059 = phi ptr [ %.058, %.thread55 ], [ null, %bb.m ]
  store ptr %.059, ptr %i.az, align 8, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %font_size_eq.exit
  %i.bo = insertelement <2 x double> poison, double %i.d, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.k, i64 1
  %i.bq = fdiv <2 x double> %i.bp, <double 1.440000e+02, double 2.160000e+02> ; 2 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  %i.bs = fadd double %.sroa.036.0, %i.br
  %i.bt = extractelement <2 x double> %i.bq, i64 1
  %i.bu = fadd double %2, %i.bt
  %i.bv = tail call i32 @gvputc(ptr noundef nonnull %0, i32 noundef 34) #9 ; 0 uses
  %i.bw = load ptr, ptr %3, align 8, !tbaa !58
  tail call void @gvputs_nonascii(ptr noundef nonnull %0, ptr noundef %i.bw) #9
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.46, double noundef %i.bs, double noundef %i.bu) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pic_ellipse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = select i1 %.not, ptr @.str.85, ptr @.str.84
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !59
  %i.d = load <2 x double>, ptr %1, align 8, !tbaa !59 ; 2 uses
  %i.e = fsub <2 x double> %i.c, %i.d
  %i.f = fmul <2 x double> %i.e, splat (double 2.000000e+00)
  %i.g = fdiv <2 x double> %i.f, splat (double 7.200000e+01) ; 2 uses
  %i.h = fdiv <2 x double> %i.d, splat (double 7.200000e+01) ; 2 uses
  %i.i = extractelement <2 x double> %i.g, i64 0
  %i.j = extractelement <2 x double> %i.g, i64 1
  %i.k = extractelement <2 x double> %i.h, i64 0
  %i.l = extractelement <2 x double> %i.h, i64 1
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef nonnull %i.a, double noundef %i.i, double noundef %i.j, double noundef %i.k, double noundef %i.l) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pic_polygon(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %.not19.i = icmp eq i64 %2, 0
  br i1 %.not19.i, label %picptarray.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %1, align 8, !tbaa !60
  %i.c = load double, ptr %i.a, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.86, double noundef %i.b, double noundef %i.c) #9
  %exitcond.peel.not.i = icmp eq i64 %2, 1
  br i1 %exitcond.peel.not.i, label %picptarray.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.b, %.peel.next.i
  %.018.i = phi i64 [ %i.h, %.peel.next.i ], [ 1, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.018.i ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.87, double noundef %i.e, double noundef %i.g) #9
  %i.h = add nuw i64 %.018.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %2
  br i1 %exitcond.not.i, label %picptarray.exit, label %.peel.next.i, !llvm.loop !62

picptarray.exit:                                  ; preds = %.peel.next.i, %bb.a, %bb.b
  %i.i = load double, ptr %1, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.87, double noundef %i.i, double noundef %i.k) #9
  %i.l = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.88) #9 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pic_bezier(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %4 = alloca [4 x %struct.pointf_s], align 16    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !59 ; 3 uses
  store <2 x double> %i.b, ptr %i.a, align 16, !tbaa !59
  %i.c = extractelement <2 x double> %i.b, i64 0
  %i.d = extractelement <2 x double> %i.b, i64 1
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.86, double noundef %i.c, double noundef %i.d) #9
  %i.e = icmp ugt i64 %2, 3
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.88) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.i = phi i64 [ %i.ai, %.lr.ph ], [ 3, %.lr.ph.preheader ] ; 2 uses
  %.027 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !64
  %i.j = getelementptr [16 x i8], ptr %1, i64 %.027 ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load <2 x double>, ptr %i.k, align 8, !tbaa !59
  store <2 x double> %i.l, ptr %i.f, align 16, !tbaa !59
  %i.m = getelementptr i8, ptr %i.j, i64 32
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !59
  store <2 x double> %i.n, ptr %i.g, align 16, !tbaa !59
  %i.o = getelementptr i8, ptr %i.j, i64 48
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !59
  store <2 x double> %i.p, ptr %i.a, align 16, !tbaa !59
  %i.q = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef f0x3FC5555555555555, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.r = extractvalue { double, double } %i.q, 0
  %i.s = extractvalue { double, double } %i.q, 1
  call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.89, double noundef %i.r, double noundef %i.s) #9
  %i.t = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef f0x3FD5555555555555, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.u = extractvalue { double, double } %i.t, 0
  %i.v = extractvalue { double, double } %i.t, 1
  call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.89, double noundef %i.u, double noundef %i.v) #9
  %i.w = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef 5.000000e-01, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.x = extractvalue { double, double } %i.w, 0
  %i.y = extractvalue { double, double } %i.w, 1
  call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.89, double noundef %i.x, double noundef %i.y) #9
  %i.z = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef f0x3FE5555555555555, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.aa = extractvalue { double, double } %i.z, 0
  %i.ab = extractvalue { double, double } %i.z, 1
  call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.89, double noundef %i.aa, double noundef %i.ab) #9
  %i.ac = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef f0x3FEAAAAAAAAAAAAB, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.ad = extractvalue { double, double } %i.ac, 0
  %i.ae = extractvalue { double, double } %i.ac, 1
  call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.89, double noundef %i.ad, double noundef %i.ae) #9
  %i.af = call { double, double } @Bezier(ptr noundef nonnull %4, double noundef 1.000000e+00, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.ag = extractvalue { double, double } %i.af, 0
  %i.ah = extractvalue { double, double } %i.af, 1
  call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.89, double noundef %i.ag, double noundef %i.ah) #9
  %i.ai = add i64 %i.i, 3                         ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %2
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !65
}

; Function Attrs: nounwind uwtable
define internal void @pic_polyline(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %.not19.i = icmp eq i64 %2, 0
  br i1 %.not19.i, label %picptarray.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %1, align 8, !tbaa !60
  %i.c = load double, ptr %i.a, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.86, double noundef %i.b, double noundef %i.c) #9
  %exitcond.peel.not.i = icmp eq i64 %2, 1
  br i1 %exitcond.peel.not.i, label %picptarray.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.b, %.peel.next.i
  %.018.i = phi i64 [ %i.h, %.peel.next.i ], [ 1, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.018.i ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @gvprintf(ptr noundef %0, ptr noundef nonnull @.str.87, double noundef %i.e, double noundef %i.g) #9
  %i.h = add nuw i64 %.018.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %2
  br i1 %exitcond.not.i, label %picptarray.exit, label %.peel.next.i, !llvm.loop !62

picptarray.exit:                                  ; preds = %.peel.next.i, %bb.a, %bb.b
  %i.i = tail call i32 @gvputs(ptr noundef %0, ptr noundef nonnull @.str.88) #9 ; 0 uses
  ret void
end_hunk_0
