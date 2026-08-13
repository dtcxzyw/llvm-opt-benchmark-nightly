inline.NumInlined: 1428
inline.NumDeleted: 355
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK6casadi10FiniteDiff4evalEPPKdPPdPxS4_Pv:bb.a
  %i.ml = getelementptr i8, ptr %i.mb, i64 %i.mj
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next357, %vector.body351 ] ; 2 uses
  %i.mm = shl i64 %index352, 3                    ; 2 uses
  %next.gep353 = getelementptr i8, ptr %i.md, i64 %i.mm ; 2 uses
  %next.gep354 = getelementptr i8, ptr %i.mb, i64 %i.mm ; 2 uses
  %i.mn = getelementptr i8, ptr %next.gep354, i64 16
  %wide.load355 = load <2 x double>, ptr %next.gep354, align 8, !tbaa !100
  %wide.load356 = load <2 x double>, ptr %i.mn, align 8, !tbaa !100
  %i.mo = getelementptr i8, ptr %next.gep353, i64 16
  store <2 x double> %wide.load355, ptr %next.gep353, align 8, !tbaa !100
  store <2 x double> %wide.load356, ptr %i.mo, align 8, !tbaa !100
  %index.next357 = add nuw i64 %index352, 4       ; 2 uses
  %i.mp = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.mp, label %middle.block358, label %vector.body351, !llvm.loop !244

middle.block358:                                  ; preds = %vector.body351
  %cmp.n359 = icmp eq i64 %i.lw, %n.vec350
  br i1 %cmp.n359, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit197, label %.lr.ph.i190.preheader446

.lr.ph.i190.preheader446:                         ; preds = %vector.memcheck344, %.lr.ph.i190.preheader, %middle.block358
  %.020.i191.ph = phi i64 [ 0, %vector.memcheck344 ], [ 0, %.lr.ph.i190.preheader ], [ %n.vec350, %middle.block358 ] ; 4 uses
  %.01019.i192.ph = phi ptr [ %i.md, %vector.memcheck344 ], [ %i.md, %.lr.ph.i190.preheader ], [ %i.mk, %middle.block358 ] ; 2 uses
  %.01218.i193.ph = phi ptr [ %i.mb, %vector.memcheck344 ], [ %i.mb, %.lr.ph.i190.preheader ], [ %i.ml, %middle.block358 ] ; 2 uses
  %i.mq = sub nsw i64 %i.lw, %.020.i191.ph
  %xtraiter475 = and i64 %i.mq, 7                 ; 2 uses
  %lcmp.mod476.not = icmp eq i64 %xtraiter475, 0
  br i1 %lcmp.mod476.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol

.lr.ph.i190.prol:                                 ; preds = %.lr.ph.i190.preheader446, %.lr.ph.i190.prol
  %.020.i191.prol = phi i64 [ %i.mu, %.lr.ph.i190.prol ], [ %.020.i191.ph, %.lr.ph.i190.preheader446 ]
  %.01019.i192.prol = phi ptr [ %i.mt, %.lr.ph.i190.prol ], [ %.01019.i192.ph, %.lr.ph.i190.preheader446 ] ; 2 uses
  %.01218.i193.prol = phi ptr [ %i.mr, %.lr.ph.i190.prol ], [ %.01218.i193.ph, %.lr.ph.i190.preheader446 ] ; 2 uses
  %prol.iter477 = phi i64 [ %prol.iter477.next, %.lr.ph.i190.prol ], [ 0, %.lr.ph.i190.preheader446 ]
  %i.mr = getelementptr inbounds nuw i8, ptr %.01218.i193.prol, i64 8 ; 2 uses
  %i.ms = load double, ptr %.01218.i193.prol, align 8, !tbaa !100
  %i.mt = getelementptr inbounds nuw i8, ptr %.01019.i192.prol, i64 8 ; 2 uses
  store double %i.ms, ptr %.01019.i192.prol, align 8, !tbaa !100
  %i.mu = add nuw nsw i64 %.020.i191.prol, 1      ; 2 uses
  %prol.iter477.next = add i64 %prol.iter477, 1   ; 2 uses
  %prol.iter477.cmp.not = icmp eq i64 %prol.iter477.next, %xtraiter475
  br i1 %prol.iter477.cmp.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol, !llvm.loop !245

.lr.ph.i190.prol.loopexit:                        ; preds = %.lr.ph.i190.prol, %.lr.ph.i190.preheader446
  %.020.i191.unr = phi i64 [ %.020.i191.ph, %.lr.ph.i190.preheader446 ], [ %i.mu, %.lr.ph.i190.prol ]
  %.01019.i192.unr = phi ptr [ %.01019.i192.ph, %.lr.ph.i190.preheader446 ], [ %i.mt, %.lr.ph.i190.prol ]
  %.01218.i193.unr = phi ptr [ %.01218.i193.ph, %.lr.ph.i190.preheader446 ], [ %i.mr, %.lr.ph.i190.prol ]
  %i.mv = sub nsw i64 %.020.i191.ph, %i.lw
  %i.mw = icmp ugt i64 %i.mv, -8
  br i1 %i.mw, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit197, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190
  %.020.i191 = phi i64 [ %i.nv, %.lr.ph.i190 ], [ %.020.i191.unr, %.lr.ph.i190.prol.loopexit ]
  %.01019.i192 = phi ptr [ %i.nu, %.lr.ph.i190 ], [ %.01019.i192.unr, %.lr.ph.i190.prol.loopexit ] ; 9 uses
  %.01218.i193 = phi ptr [ %i.ns, %.lr.ph.i190 ], [ %.01218.i193.unr, %.lr.ph.i190.prol.loopexit ] ; 9 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.01218.i193, i64 8
  %i.my = load double, ptr %.01218.i193, align 8, !tbaa !100
  %i.mz = getelementptr inbounds nuw i8, ptr %.01019.i192, i64 8
  store double %i.my, ptr %.01019.i192, align 8, !tbaa !100
  %i.na = getelementptr inbounds nuw i8, ptr %.01218.i193, i64 16
  %i.nb = load double, ptr %i.mx, align 8, !tbaa !100
  %i.nc = getelementptr inbounds nuw i8, ptr %.01019.i192, i64 16
  store double %i.nb, ptr %i.mz, align 8, !tbaa !100
  %i.nd = getelementptr inbounds nuw i8, ptr %.01218.i193, i64 24
  %i.ne = load double, ptr %i.na, align 8, !tbaa !100
  %i.nf = getelementptr inbounds nuw i8, ptr %.01019.i192, i64 24
  store double %i.ne, ptr %i.nc, align 8, !tbaa !100
  %i.ng = getelementptr inbounds nuw i8, ptr %.01218.i193, i64 32
  %i.nh = load double, ptr %i.nd, align 8, !tbaa !100
  %i.ni = getelementptr inbounds nuw i8, ptr %.01019.i192, i64 32
  store double %i.nh, ptr %i.nf, align 8, !tbaa !100
  %i.nj = getelementptr inbounds nuw i8, ptr %.01218.i193, i64 40
  %i.nk = load double, ptr %i.ng, align 8, !tbaa !100
  %i.nl = getelementptr inbounds nuw i8, ptr %.01019.i192, i64 40
  store double %i.nk, ptr %i.ni, align 8, !tbaa !100
  %i.nm = getelementptr inbounds nuw i8, ptr %.01218.i193, i64 48
  %i.nn = load double, ptr %i.nj, align 8, !tbaa !100
  %i.no = getelementptr inbounds nuw i8, ptr %.01019.i192, i64 48
  store double %i.nn, ptr %i.nl, align 8, !tbaa !100
  %i.np = getelementptr inbounds nuw i8, ptr %.01218.i193, i64 56
  %i.nq = load double, ptr %i.nm, align 8, !tbaa !100
  %i.nr = getelementptr inbounds nuw i8, ptr %.01019.i192, i64 56
  store double %i.nq, ptr %i.no, align 8, !tbaa !100
  %i.ns = getelementptr inbounds nuw i8, ptr %.01218.i193, i64 64
  %i.nt = load double, ptr %i.np, align 8, !tbaa !100
  %i.nu = getelementptr inbounds nuw i8, ptr %.01019.i192, i64 64
  store double %i.nt, ptr %i.nr, align 8, !tbaa !100
  %i.nv = add nuw nsw i64 %.020.i191, 8           ; 2 uses
  %exitcond.not.i194.7 = icmp eq i64 %i.nv, %i.lw
  br i1 %exitcond.not.i194.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit197, label %.lr.ph.i190, !llvm.loop !246

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit197:    ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190, %middle.block358, %.lr.ph255.split
  %i.nw = add nsw i64 %i.lw, %.0128253
  %i.nx = add nuw nsw i64 %.0127254, 1            ; 2 uses
  %exitcond285.not = icmp eq i64 %i.nx, %i.c
  br i1 %exitcond285.not, label %._crit_edge256, label %.lr.ph255.split, !llvm.loop !243

._crit_edge256:                                   ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit197, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit197.us, %.thread
  %i.ny = add nuw nsw i64 %.0143258, 1            ; 2 uses
  %i.nz = load i64, ptr %i.cj, align 8, !tbaa !20
  %.not160 = icmp slt i64 %i.ny, %i.nz
  br i1 %.not160, label %bb.c, label %.critedge, !llvm.loop !247

.critedge:                                        ; preds = %._crit_edge256, %.preheader, %.preheader.us239, %._crit_edge236.us, %.preheader208
  %.not160213 = phi i32 [ 1, %._crit_edge236.us ], [ 1, %.preheader.us239 ], [ 1, %.preheader ], [ 0, %.preheader208 ], [ 0, %._crit_edge256 ]
  ret i32 %.not160213
}

declare void @_ZNK6casadi16FunctionInternal5setupEPvPPKdPPdPxS5_(ptr noundef nonnull align 8 dereferenceable(1312), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK6casadi8Function7nnz_outEx(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK6casadi8Function6nnz_inEx(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK6casadi8FunctionclEPPKdPPdPxS4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZNK6casadi11ForwardDiff7calc_fdEPPdS1_S1_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1400) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, double noundef %4) unnamed_addr #19 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.d = load i64, ptr %i.c, align 8, !tbaa !113  ; 7 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN6casadi23casadi_forward_diff_oldIdEET_PPS1_S2_S2_S1_xPKNS_22casadi_finite_diff_memIS1_EE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !210    ; 5 uses
  %min.iters.check = icmp eq i64 %i.d, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = sub i64 %i.g, %i.b
  %diff.check = icmp ugt i64 %i.h, -16
  %i.i = sub i64 %i.a, %i.b
  %diff.check5 = icmp ugt i64 %i.i, -16
  %conflict.rdx = or i1 %diff.check, %diff.check5
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, 9223372036854775806      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %wide.load = load <2 x double>, ptr %i.j, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %wide.load6 = load <2 x double>, ptr %i.k, align 8, !tbaa !100
  %i.l = fsub <2 x double> %wide.load, %wide.load6
  %i.m = fdiv <2 x double> %i.l, %broadcast.splat
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  store <2 x double> %i.m, ptr %i.n, align 8, !tbaa !100
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_ZN6casadi23casadi_forward_diff_oldIdEET_PPS1_S2_S2_S1_xPKNS_22casadi_finite_diff_memIS1_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  %xtraiter = and i64 %i.d, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.09.i.ph
  %i.q = load double, ptr %i.p, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.09.i.ph
  %i.s = load double, ptr %i.r, align 8, !tbaa !100
  %i.t = fsub double %i.q, %i.s
  %i.u = fdiv double %i.t, %4
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.i.ph
  store double %i.u, ptr %i.v, align 8, !tbaa !100
  %i.w = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = icmp eq i64 %i.d, %.neg
  br i1 %i.x, label %_ZN6casadi23casadi_forward_diff_oldIdEET_PPS1_S2_S2_S1_xPKNS_22casadi_finite_diff_memIS1_EE.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.al, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.09.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.09.i
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !100
  %i.ac = fsub double %i.z, %i.ab
  %i.ad = fdiv double %i.ac, %4
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.i
  store double %i.ad, ptr %i.ae, align 8, !tbaa !100
  %5 = add nuw nsw i64 %.09.i, 1                  ; 3 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %5
  %i.af = load double, ptr %6, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %5
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !100
  %i.ai = fsub double %i.af, %i.ah
  %i.aj = fdiv double %i.ai, %4
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %5
  store double %i.aj, ptr %i.ak, align 8, !tbaa !100
  %i.al = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.al, %i.d
  br i1 %exitcond.not.i.1, label %_ZN6casadi23casadi_forward_diff_oldIdEET_PPS1_S2_S2_S1_xPKNS_22casadi_finite_diff_memIS1_EE.exit, label %scalar.ph, !llvm.loop !249

_ZN6casadi23casadi_forward_diff_oldIdEET_PPS1_S2_S2_S1_xPKNS_22casadi_finite_diff_memIS1_EE.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret double -1.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZNK6casadi11CentralDiff7calc_fdEPPdS1_S1_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1400) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, double noundef %4) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.b = load i64, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.d = icmp sgt i64 %i.b, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN6casadi23casadi_central_diff_oldIdEET_PPS1_S2_S2_S1_xPKNS_22casadi_finite_diff_memIS1_EE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210
  %i.g = fmul double %4, 2.000000e+00
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1384
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.032.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %bb.h ] ; 6 uses
  %.03031.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.032.i
  %i.j = load double, ptr %i.i, align 8, !tbaa !100 ; 4 uses
  %i.k = tail call double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp ueq double %i.k, +inf
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.032.i
  %i.n = load double, ptr %i.m, align 8, !tbaa !100 ; 4 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp ueq double %i.o, +inf
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %1, align 8, !tbaa !210
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.032.i
  %i.s = load double, ptr %i.r, align 8, !tbaa !100 ; 4 uses
  %i.t = tail call double @llvm.fabs.f64(double %i.s)
  %i.u = fcmp ueq double %i.t, +inf
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.032.i
  store double +qnan, ptr %i.v, align 8, !tbaa !100
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.w = fsub double %i.j, %i.s
  %i.x = fdiv double %i.w, %i.g
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.032.i
  store double %i.x, ptr %i.y, align 8, !tbaa !100
  %i.z = fcmp ult double %.03031.i, 0.000000e+00
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load double, ptr %i.c, align 8, !tbaa !250
  %i.ab = fdiv double %i.aa, %4
  %i.ac = fsub nsz double %i.j, %i.n
  %i.ad = tail call nsz double @llvm.fabs.f64(double %i.ac)
  %i.ae = fsub nsz double %i.n, %i.s
  %i.af = tail call nsz double @llvm.fabs.f64(double %i.ae)
  %i.ag = tail call nsz double @llvm.maxnum.f64(double %i.ad, double %i.af)
  %i.ah = load double, ptr %i.h, align 8, !tbaa !251
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ag, double %i.ah)
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.n, double -2.000000e+00, double %i.j)
  %i.ak = fadd double %i.aj, %i.s
  %i.al = fdiv nsz double %i.ak, %i.ai
  %i.am = tail call nsz double @llvm.fabs.f64(double %i.al)
  %i.an = tail call nsz double @llvm.maxnum.f64(double %.03031.i, double %i.am)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1.i = phi double [ %i.an, %bb.g ], [ %.03031.i, %bb.f ], [ -1.000000e+00, %bb.e ] ; 2 uses
  %i.ao = add nuw nsw i64 %.032.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.b
  br i1 %exitcond.not.i, label %_ZN6casadi23casadi_central_diff_oldIdEET_PPS1_S2_S2_S1_xPKNS_22casadi_finite_diff_memIS1_EE.exit, label %bb.b, !llvm.loop !252

_ZN6casadi23casadi_central_diff_oldIdEET_PPS1_S2_S2_S1_xPKNS_22casadi_finite_diff_memIS1_EE.exit: ; preds = %bb.h, %bb.a
  %.030.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %.1.i, %bb.h ]
  ret double %.030.lcssa.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10FiniteDiff20codegen_declarationsERNS_13CodeGeneratorE(ptr noundef nonnull align 8 dereferenceable(1400) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %3 = alloca %"class.std::vector.15", align 8    ; 11 uses
  %4 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @_ZN6casadi13CodeGenerator14add_dependencyB5cxx11ERKNS_8FunctionE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !15
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.g, ptr noundef nonnull align 1 dereferenceable(11) @.str.37, i64 11, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 11, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 27
  store i8 0, ptr %i.i, align 1, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.j = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 4 uses

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.j, ptr %3, align 8, !tbaa !148
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !151
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %4, ptr noundef nonnull %i.l, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 32) #31
  br label %.body

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !149
  invoke void @_ZN6casadi13CodeGenerator13add_auxiliaryENS0_9AuxiliaryERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(3289) %1, i32 noundef 40, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %3, align 8, !tbaa !148    ; 3 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !149  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !150

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !148
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.d
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.d ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !151
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.e
  %i.ae = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !15
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
end_hunk_0
