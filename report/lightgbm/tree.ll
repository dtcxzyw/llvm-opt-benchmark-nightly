Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii:bb.a
  %i.aw = fdiv double %i.av, %i.j
  %i.ax = fsub double %i.am, %i.aw
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, -1
  %.not67 = icmp eq i64 %indvars.iv59, 0
  %i.ay = trunc nuw nsw i64 %indvars.iv59 to i32
  br i1 %.not67, label %.preheader, label %.lr.ph.split.us, !llvm.loop !40

.preheader:                                       ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %bb.a
  %i.az = icmp slt i32 %2, %1
  br i1 %i.az, label %.lr.ph56.preheader, label %._crit_edge

.lr.ph56.preheader:                               ; preds = %.preheader
  %wide.trip.count = sext i32 %1 to i64           ; 3 uses
  %i.ba = sub nsw i64 %wide.trip.count, %i.a
  %xtraiter = and i64 %i.ba, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol

.lr.ph56.prol:                                    ; preds = %.lr.ph56.preheader
  %indvars.iv.next63.prol = add nsw i64 %i.a, 1   ; 2 uses
  %i.bb = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63.prol ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !437
  %i.bd = getelementptr inbounds [32 x i8], ptr %0, i64 %i.a ; 2 uses
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !437
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !118
  store <2 x double> %i.bg, ptr %i.bf, align 8, !tbaa !118
  br label %.lr.ph56.prol.loopexit

.lr.ph56.prol.loopexit:                           ; preds = %.lr.ph56.prol, %.lr.ph56.preheader
  %indvars.iv62.unr = phi i64 [ %i.a, %.lr.ph56.preheader ], [ %indvars.iv.next63.prol, %.lr.ph56.prol ]
  %i.bh = add nsw i64 %wide.trip.count, -1
  %i.bi = icmp eq i64 %i.bh, %i.a
  br i1 %i.bi, label %._crit_edge, label %.lr.ph56

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader75, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader75 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !440
  %i.bm = fmul double %i.bl, %i.j
  %i.bn = trunc i64 %indvars.iv to i32
  %i.bo = sub i32 %1, %i.bn
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = fmul double %i.f, %i.bp
  %i.br = fdiv double %i.bm, %i.bq
  store double %i.br, ptr %i.bk, align 8, !tbaa !440
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.preheader, label %.lr.ph.split, !llvm.loop !1366

._crit_edge:                                      ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56, %.preheader
  ret void

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.1, %.lr.ph56 ], [ %indvars.iv62.unr, %.lr.ph56.prol.loopexit ] ; 3 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.bs = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !437
  %i.bu = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv62 ; 2 uses
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !437
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load <2 x double>, ptr %i.bv, align 8, !tbaa !118
  store <2 x double> %i.bx, ptr %i.bw, align 8, !tbaa !118
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, 2 ; 3 uses
  %i.by = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63.1 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !437
  %i.ca = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv.next63 ; 2 uses
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !437
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load <2 x double>, ptr %i.cb, align 8, !tbaa !118
  store <2 x double> %i.cd, ptr %i.cc, align 8, !tbaa !118
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next63.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph56, !llvm.loop !41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #36 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !439 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !438 ; 4 uses
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.034 = add nsw i32 %1, -1                      ; 3 uses
  %i.h = fcmp une double %i.d, 0.000000e+00
  %i.i = add nuw nsw i32 %1, 1
  %i.j = uitofp nneg i32 %i.i to double           ; 5 uses
  %i.k = fneg double %i.f
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.l = zext i32 %.034 to i64                    ; 3 uses
  %i.m = and i32 %1, 1
  %lcmp.mod.not = icmp eq i32 %i.m, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !440
  %i.q = fdiv double %i.p, %i.f
  %i.r = fdiv double 1.000000e+00, %i.j
  %i.s = fdiv double %i.q, %i.r
  %.1.prol = fadd double %i.s, 0.000000e+00       ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.l, -1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.1.lcssa.unr = phi double [ poison, %.lr.ph.split.preheader ], [ %.1.prol, %.lr.ph.split.prol ]
  %indvars.iv.unr = phi i64 [ %i.l, %.lr.ph.split.preheader ], [ %indvars.iv.next.prol, %.lr.ph.split.prol ]
  %.03036.unr = phi double [ 0.000000e+00, %.lr.ph.split.preheader ], [ %.1.prol, %.lr.ph.split.prol ]
  %i.t = icmp eq i32 %.034, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.u = zext nneg i32 %1 to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !440
  %i.y = zext nneg i32 %.034 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv41 = phi i64 [ %i.y, %.lr.ph.split.us.preheader ], [ %indvars.iv.next42, %.lr.ph.split.us ] ; 5 uses
  %.0.in37.us = phi i32 [ %1, %.lr.ph.split.us.preheader ], [ %i.am, %.lr.ph.split.us ]
  %.03036.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %.1.us, %.lr.ph.split.us ]
  %.03135.us = phi double [ %i.x, %.lr.ph.split.us.preheader ], [ %i.al, %.lr.ph.split.us ]
  %i.z = fmul double %.03135.us, %i.j
  %i.aa = uitofp nneg i32 %.0.in37.us to double
  %i.ab = fmul double %i.d, %i.aa
  %i.ac = fdiv double %i.z, %i.ab                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !440
  %i.ag = trunc i64 %indvars.iv41 to i32
  %i.ah = sub i32 %1, %i.ag
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = fdiv double %i.ai, %i.j
  %i.ak = fmul double %i.ac, %i.k
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.aj, double %i.af)
  %.1.us = fadd double %.03036.us, %i.ac          ; 2 uses
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, -1
  %.not46 = icmp eq i64 %indvars.iv41, 0
  %i.am = trunc nuw nsw i64 %indvars.iv41 to i32
  br i1 %.not46, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %.030.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.us, %.lr.ph.split.us ], [ %.1.lcssa.unr, %.lr.ph.split.prol.loopexit ], [ %.1.1, %.lr.ph.split ]
  ret double %.030.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.split ], [ %indvars.iv.unr, %.lr.ph.split.prol.loopexit ] ; 4 uses
  %.03036 = phi double [ %.1.1, %.lr.ph.split ], [ %.03036.unr, %.lr.ph.split.prol.loopexit ]
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !440
  %i.aq = fdiv double %i.ap, %i.f
  %i.ar = trunc i64 %indvars.iv to i32
  %i.as = sub i32 %1, %i.ar
  %i.at = sitofp i32 %i.as to double
  %i.au = fdiv double %i.at, %i.j
  %i.av = fdiv double %i.aq, %i.au
  %.1 = fadd double %.03036, %i.av
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.next
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !440
  %i.az = fdiv double %i.ay, %i.f
  %i.ba = trunc i64 %indvars.iv.next to i32
  %i.bb = sub i32 %1, %i.ba
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = fdiv double %i.bc, %i.j
  %i.be = fdiv double %i.az, %i.bd
  %.1.1 = fadd double %.1, %i.be                  ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !42
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK8LightGBM4Tree8TreeSHAPEPKdPdiiPNS0_11PathElementEddi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, double noundef %6, double noundef %7, i32 noundef %8) local_unnamed_addr #37 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, %bb.a
  %.tr97 = phi i32 [ %3, %bb.a ], [ %i.fq, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr98 = phi i32 [ %4, %bb.a ], [ %.pre-phi, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 29 uses
  %.tr99 = phi ptr [ %5, %bb.a ], [ %i.k, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr100 = phi double [ %6, %bb.a ], [ %14, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr101 = phi double [ %7, %bb.a ], [ 0.000000e+00, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 3 uses
  %.tr102 = phi i32 [ %8, %bb.a ], [ %i.jz, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ] ; 2 uses
  %i.j = sext i32 %.tr98 to i64                   ; 7 uses
  %i.k = getelementptr inbounds [32 x i8], ptr %.tr99, i64 %i.j ; 27 uses
  %i.l = icmp sgt i32 %.tr98, 0                   ; 2 uses
  br i1 %i.l, label %bb.b, label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge

bb.b:                                             ; preds = %tailrecurse
  %.not94 = icmp eq i32 %.tr98, 1
  br i1 %.not94, label %bb.d, label %bb.c, !prof !208

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.j, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %.tr99, i64 %.idx, i1 false)
  br label %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.tr99, i64 32, i1 false), !tbaa.struct !441
  br label %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit: ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.j ; 4 uses
  store i32 %.tr102, ptr %i.m, align 8, !tbaa !437
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store double %.tr100, ptr %i.n, align 8, !tbaa !438
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store double %.tr101, ptr %i.o, align 8, !tbaa !439
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !440
  %i.q = add nuw nsw i32 %.tr98, 1
  %i.r = uitofp nneg i32 %i.q to double
  %i.s = zext nneg i32 %.tr98 to i64
  %9 = insertelement <2 x double> poison, double %.tr100, i64 0
  %10 = insertelement <2 x double> %9, double %.tr101, i64 1
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit
  %i.v = phi double [ 0.000000e+00, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit ], [ %i.ap, %bb.e ]
  %indvars.iv.i = phi i64 [ %i.s, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !440
  %i.z = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = trunc i64 %indvars.iv.next.i to i32
  %i.ad = sub i32 %.tr98, %i.ac
  %i.ae = uitofp nneg i32 %i.z to double
  %i.af = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %10, %i.ag
  %i.ai = sitofp i32 %i.ad to double
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ae, i64 1
  %i.al = fmul <2 x double> %i.ah, %i.ak
  %i.am = fdiv <2 x double> %i.al, %i.u           ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 1
  %i.ao = fadd double %i.v, %i.an
  store double %i.ao, ptr %i.ab, align 8, !tbaa !440
  %i.ap = extractelement <2 x double> %i.am, i64 0 ; 2 uses
  store double %i.ap, ptr %i.x, align 8, !tbaa !440
  %i.aq = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.aq, label %bb.e, label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit, !llvm.loop !39

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge: ; preds = %tailrecurse
  %i.ar = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.j ; 4 uses
  store i32 %.tr102, ptr %i.ar, align 8, !tbaa !437
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %.tr100, ptr %i.as, align 8, !tbaa !438
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store double %.tr101, ptr %i.at, align 8, !tbaa !439
  %i.au = icmp eq i32 %.tr98, 0
  %i.av = uitofp i1 %i.au to double
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store double %i.av, ptr %i.aw, align 8, !tbaa !440
  br label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit: ; preds = %bb.e, %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge
  %i.ax = icmp slt i32 %.tr97, 0
  br i1 %i.ax, label %.preheader, label %bb.f

.preheader:                                       ; preds = %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit
  %.not79109 = icmp slt i32 %.tr98, 1
  br i1 %.not79109, label %._crit_edge111, label %.lr.ph.i80.lr.ph

.lr.ph.i80.lr.ph:                                 ; preds = %.preheader
  %.034.i = add nsw i32 %.tr98, -1                ; 2 uses
  %i.ay = add nuw i32 %.tr98, 1                   ; 2 uses
  %i.az = uitofp nneg i32 %i.ay to double         ; 5 uses
  %i.ba = zext i32 %.034.i to i64                 ; 4 uses
  %i.bb = zext nneg i32 %.tr98 to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bf = xor i32 %.tr97, -1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %wide.trip.count119 = zext i32 %i.ay to i64
  %i.bj = and i32 %.tr98, 1
  %lcmp.mod152.not = icmp eq i32 %i.bj, 0
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.ba
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = fdiv double 1.000000e+00, %i.az
  %indvars.iv.next.i82.prol = add nsw i64 %i.ba, -1
  %i.bn = icmp eq i32 %.034.i, 0
  br label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.lr.ph, %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit
  %indvars.iv115 = phi i64 [ 1, %.lr.ph.i80.lr.ph ], [ %indvars.iv.next116, %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv115 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !439 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !438 ; 5 uses
  %i.bt = fcmp une double %i.bq, 0.000000e+00
  %i.bu = fneg double %i.bs
  br i1 %i.bt, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i80
  br i1 %lcmp.mod152.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.bv = load double, ptr %i.bl, align 8, !tbaa !440
  %i.bw = fdiv double %i.bv, %i.bs
  %i.bx = fdiv double %i.bw, %i.bm
  %.1.i.prol = fadd double %i.bx, 0.000000e+00    ; 2 uses
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %.1.i.lcssa.unr = phi double [ poison, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  %indvars.iv.i81.unr = phi i64 [ %i.ba, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i82.prol, %.lr.ph.split.i.prol ]
  %.03036.i.unr = phi double [ 0.000000e+00, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  br i1 %i.bn, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i80
  %i.by = load double, ptr %i.bd, align 8, !tbaa !440
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv41.i = phi i64 [ %i.ba, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph.split.us.i ] ; 4 uses
  %.0.in37.us.i = phi i32 [ %.tr98, %.lr.ph.split.us.preheader.i ], [ %i.cg, %.lr.ph.split.us.i ]
  %.03036.us.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i ], [ %.1.us.i, %.lr.ph.split.us.i ]
  %.03135.us.i = phi double [ %i.by, %.lr.ph.split.us.preheader.i ], [ %i.cl, %.lr.ph.split.us.i ]
  %i.bz = fmul double %.03135.us.i, %i.az
  %i.ca = uitofp nneg i32 %.0.in37.us.i to double
  %i.cb = fmul double %i.bq, %i.ca
  %i.cc = fdiv double %i.bz, %i.cb                ; 2 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv41.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !440
  %i.cg = trunc i64 %indvars.iv41.i to i32        ; 2 uses
  %i.ch = sub i32 %.tr98, %i.cg
  %i.ci = sitofp i32 %i.ch to double
  %i.cj = fdiv double %i.ci, %i.az
  %i.ck = fmul double %i.cc, %i.bu
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cj, double %i.cf)
  %.1.us.i = fadd double %.03036.us.i, %i.cc      ; 2 uses
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, -1
  %.not46.i = icmp eq i64 %indvars.iv41.i, 0
  br i1 %.not46.i, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.us.i, !llvm.loop !42

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i82.1, %.lr.ph.split.i ], [ %indvars.iv.i81.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %.03036.i = phi double [ %.1.i.1, %.lr.ph.split.i ], [ %.03036.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i81
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load double, ptr %i.cn, align 8, !tbaa !440
  %i.cp = fdiv double %i.co, %i.bs
  %i.cq = trunc i64 %indvars.iv.i81 to i32
  %i.cr = sub i32 %.tr98, %i.cq
  %i.cs = sitofp i32 %i.cr to double
  %i.ct = fdiv double %i.cs, %i.az
  %i.cu = fdiv double %i.cp, %i.ct
  %.1.i = fadd double %.03036.i, %i.cu
  %indvars.iv.next.i82 = add nsw i64 %indvars.iv.i81, -1 ; 3 uses
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i82
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !440
  %i.cy = fdiv double %i.cx, %i.bs
  %i.cz = trunc i64 %indvars.iv.next.i82 to i32
  %i.da = sub i32 %.tr98, %i.cz
  %i.db = sitofp i32 %i.da to double
  %i.dc = fdiv double %i.db, %i.az
  %i.dd = fdiv double %i.cy, %i.dc
  %.1.i.1 = fadd double %.1.i, %i.dd              ; 2 uses
  %indvars.iv.next.i82.1 = add nsw i64 %indvars.iv.i81, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i82, 0
  br i1 %.not.i.1, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i, !llvm.loop !42

_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit: ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i
  %.030.lcssa.i = phi double [ %.1.us.i, %.lr.ph.split.us.i ], [ %.1.i.lcssa.unr, %.lr.ph.split.i.prol.loopexit ], [ %.1.i.1, %.lr.ph.split.i ]
  %i.de = fsub double %i.bq, %i.bs
  %i.df = fmul double %.030.lcssa.i, %i.de
  %i.dg = load double, ptr %i.bi, align 8, !tbaa !118
  %i.dh = load i32, ptr %i.bo, align 8, !tbaa !437
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.di ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !118
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dg, double %i.dk)
  store double %i.dl, ptr %i.dj, align 8, !tbaa !118
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge111, label %.lr.ph.i80, !llvm.loop !1367

bb.f:                                             ; preds = %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit
  %i.dm = zext nneg i32 %.tr97 to i64             ; 9 uses
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dm ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !88 ; 5 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !118 ; 4 uses
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dm
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !202 ; 3 uses
  %i.dw = and i8 %i.dv, 1
  %.not.i83 = icmp eq i8 %i.dw, 0
  br i1 %.not.i83, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dx = fcmp uno double %i.ds, 0.000000e+00
  br i1 %i.dx, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dy = fptosi double %i.ds to i32              ; 3 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dm
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !118
  %i.ed = fptosi double %i.ec to i32
  %i.ee = sext i32 %i.ed to i64
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.eg = getelementptr [4 x i8], ptr %i.ef, i64 %i.ee ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !88 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eg, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !88
  %i.ek = sub nsw i32 %i.ej, %i.eh
  %i.el = lshr i32 %i.dy, 5                       ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.el, %i.ek
  br i1 %.not.i.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i: ; preds = %bb.i
  %i.em = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.en = sext i32 %i.eh to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = zext nneg i32 %i.el to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !88
  %i.es = and i32 %i.dy, 31
  %i.et = lshr i32 %i.er, %i.es
  %i.eu = trunc i32 %i.et to i1
  br i1 %i.eu, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i: ; preds = %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, %bb.i
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit

bb.j:                                             ; preds = %bb.f
  %i.ev = lshr i8 %i.dv, 2
  %i.ew = and i8 %i.ev, 3                         ; 2 uses
  %i.ex = fcmp uno double %i.ds, 0.000000e+00
  %i.ey = icmp ne i8 %i.ew, 2
  %or.cond.i.i = and i1 %i.ex, %i.ey
  %.017.i.i = select i1 %or.cond.i.i, double 0.000000e+00, double %i.ds ; 3 uses
  switch i8 %i.ew, label %bb.n [
    i8 1, label %bb.k
    i8 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ez = tail call double @llvm.fabs.f64(double %.017.i.i)
  %i.fa = fcmp ugt double %i.ez, f0x38AA95A5C0000000
  br i1 %i.fa, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.fb = fcmp uno double %.017.i.i, 0.000000e+00
  br i1 %i.fb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fc = and i8 %i.dv, 2
  %.not.i.i = icmp eq i8 %i.fc, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.fd = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.dm
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !118
  %i.fg = fcmp ugt double %.017.i.i, %i.ff
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i:  ; preds = %bb.n, %bb.m
  %.sink20.i.i = phi i1 [ %i.fg, %bb.n ], [ %.not.i.i, %bb.m ]
  %.19.i.i = select i1 %.sink20.i.i, i64 40, i64 16
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit

_ZNK8LightGBM4Tree8DecisionEdi.exit:              ; preds = %bb.g, %bb.h, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i
  %.sink.i = phi i64 [ 40, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i ], [ 40, %bb.h ], [ 40, %bb.g ], [ %.19.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i ], [ 16, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !62
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.dm
  %.0.i = load i32, ptr %i.fj, align 4, !tbaa !88 ; 5 uses
  %i.fk = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.dm ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !88
  %i.fn = icmp eq i32 %.0.i, %i.fm
  %i.fo = load ptr, ptr %i.g, align 8
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.dm
  %.in = select i1 %i.fn, ptr %i.fp, ptr %i.fl
  %i.fq = load i32, ptr %.in, align 4, !tbaa !88  ; 4 uses
  %i.fr = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.dm
  %i.ft = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !88
  %i.fv = sitofp i32 %i.fu to double
  %i.fw = zext nneg i32 %.0.i to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fw
  %i.fy = xor i32 %.0.i, -1
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fz
  %i.gb = icmp slt i32 %.0.i, 0
  %.in.i84 = select i1 %i.gb, ptr %i.ga, ptr %i.fx
  %i.gc = load i32, ptr %.in.i84, align 4, !tbaa !88
  %i.gd = zext nneg i32 %i.fq to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gd
  %i.gf = xor i32 %i.fq, -1
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.gg
  %i.gi = icmp slt i32 %i.fq, 0
  %.in.i85 = select i1 %i.gi, ptr %i.gh, ptr %i.ge
  %i.gj = load i32, ptr %.in.i85, align 4, !tbaa !88
  %i.gk = insertelement <2 x i32> poison, i32 %i.gc, i64 0
  %i.gl = insertelement <2 x i32> %i.gk, i32 %i.gj, i64 1
  %i.gm = sitofp <2 x i32> %i.gl to <2 x double>
  %i.gn = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fdiv <2 x double> %i.gm, %i.go
  %.not105 = icmp slt i32 %.tr98, 0
  %.pre123 = add i32 %.tr98, 1                    ; 5 uses
  br i1 %.not105, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK8LightGBM4Tree8DecisionEdi.exit
  %wide.trip.count = zext i32 %.pre123 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !437
  %i.gs = icmp eq i32 %i.gr, %i.dp
  br i1 %i.gs, label %._crit_edge.loopexit, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, label %.lr.ph, !llvm.loop !1368

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.gt = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK8LightGBM4Tree8DecisionEdi.exit, %._crit_edge.loopexit
  %.0.lcssa = phi i32 [ %i.gt, %._crit_edge.loopexit ], [ 0, %_ZNK8LightGBM4Tree8DecisionEdi.exit ] ; 3 uses
  %.not78 = icmp eq i32 %.0.lcssa, %.pre123
  br i1 %.not78, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.gu = zext nneg i32 %.0.lcssa to i64          ; 6 uses
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !438 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !439 ; 4 uses
  br i1 %i.l, label %.lr.ph.i86, label %.preheader.i

.lr.ph.i86:                                       ; preds = %bb.p
  %.04851.i = add nsw i32 %.tr98, -1              ; 3 uses
  %i.ha = fcmp une double %i.gz, 0.000000e+00
  %i.hb = uitofp nneg i32 %.pre123 to double      ; 4 uses
  br i1 %i.ha, label %.lr.ph.split.us.preheader.i92, label %.lr.ph.split.preheader.i87

.lr.ph.split.preheader.i87:                       ; preds = %.lr.ph.i86
  %i.hc = zext i32 %.04851.i to i64               ; 3 uses
  %i.hd = zext nneg i32 %.tr98 to i64             ; 2 uses
  %min.iters.check = icmp eq i32 %.tr98, 1
  br i1 %min.iters.check, label %.lr.ph.split.i88.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader.i87
  %n.vec = and i64 %i.hd, 2147483646              ; 3 uses
  %i.he = sub nsw i64 %i.hc, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <2 x i32> poison, i32 %.tr98, i64 0
  %broadcast.splat142 = shufflevector <2 x i32> %broadcast.splatinsert141, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <2 x double> poison, double %i.gx, i64 0
  %broadcast.splat144 = shufflevector <2 x double> %broadcast.splatinsert143, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert145 = insertelement <2 x i32> poison, i32 %.04851.i, i64 0
  %broadcast.splat146 = shufflevector <2 x i32> %broadcast.splatinsert145, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hf = add <2 x i32> %broadcast.splat146, <i32 0, i32 -1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %i.hf, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.hg = sub i64 %i.hc, %index                   ; 2 uses
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.hg
  %i.hi = getelementptr [32 x i8], ptr %i.k, i64 %i.hg
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 24 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hi, i64 -8     ; 2 uses
  %i.hl = load double, ptr %i.hj, align 8, !tbaa !440
  %i.hm = load double, ptr %i.hk, align 8, !tbaa !440
  %i.hn = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.hm, i64 1
  %i.hp = fmul <2 x double> %i.ho, %broadcast.splat
  %i.hq = sub <2 x i32> %broadcast.splat142, %vec.ind
  %i.hr = sitofp <2 x i32> %i.hq to <2 x double>
  %i.hs = fmul <2 x double> %broadcast.splat144, %i.hr
  %i.ht = fdiv <2 x double> %i.hp, %i.hs          ; 2 uses
  %i.hu = extractelement <2 x double> %i.ht, i64 0
  store double %i.hu, ptr %i.hj, align 8, !tbaa !440
  %i.hv = extractelement <2 x double> %i.ht, i64 1
  store double %i.hv, ptr %i.hk, align 8, !tbaa !440
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 -2)
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !1369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.hd
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.split.i88.preheader

.lr.ph.split.i88.preheader:                       ; preds = %.lr.ph.split.preheader.i87, %middle.block
  %indvars.iv.i89.ph = phi i64 [ %i.hc, %.lr.ph.split.preheader.i87 ], [ %i.he, %middle.block ]
  br label %.lr.ph.split.i88

.lr.ph.split.us.preheader.i92:                    ; preds = %.lr.ph.i86
  %i.hx = zext nneg i32 %.tr98 to i64
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !440
  %i.ib = zext nneg i32 %.04851.i to i64
  br label %.lr.ph.split.us.i93

.lr.ph.split.us.i93:                              ; preds = %.lr.ph.split.us.i93, %.lr.ph.split.us.preheader.i92
  %indvars.iv59.i = phi i64 [ %i.ib, %.lr.ph.split.us.preheader.i92 ], [ %indvars.iv.next60.i, %.lr.ph.split.us.i93 ] ; 4 uses
  %.048.in53.us.i = phi i32 [ %.tr98, %.lr.ph.split.us.preheader.i92 ], [ %i.ik, %.lr.ph.split.us.i93 ]
  %.04952.us.i = phi double [ %i.ia, %.lr.ph.split.us.preheader.i92 ], [ %i.ip, %.lr.ph.split.us.i93 ]
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv59.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24 ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !440
  %i.if = fmul double %.04952.us.i, %i.hb
  %i.ig = uitofp nneg i32 %.048.in53.us.i to double
  %i.ih = fmul double %i.gz, %i.ig
  %i.ii = fdiv double %i.if, %i.ih                ; 2 uses
  store double %i.ii, ptr %i.id, align 8, !tbaa !440
  %i.ij = fmul double %i.gx, %i.ii
  %i.ik = trunc i64 %indvars.iv59.i to i32        ; 2 uses
  %i.il = sub i32 %.tr98, %i.ik
  %i.im = sitofp i32 %i.il to double
  %i.in = fmul double %i.ij, %i.im
  %i.io = fdiv double %i.in, %i.hb
  %i.ip = fsub double %i.ie, %i.io
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, -1
  %.not67.i = icmp eq i64 %indvars.iv59.i, 0
  br i1 %.not67.i, label %.preheader.i, label %.lr.ph.split.us.i93, !llvm.loop !40

.preheader.i:                                     ; preds = %.lr.ph.split.i88, %.lr.ph.split.us.i93, %middle.block, %bb.p
  %i.iq = icmp slt i32 %.0.lcssa, %.tr98
  br i1 %i.iq, label %.lr.ph56.i.preheader, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit

.lr.ph56.i.preheader:                             ; preds = %.preheader.i
  %i.ir = sub nsw i64 %i.j, %i.gu
  %xtraiter = and i64 %i.ir, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader
  %indvars.iv.next63.i.prol = add nuw nsw i64 %i.gu, 1 ; 2 uses
  %i.is = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i.prol ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !437
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.gu ; 2 uses
  store i32 %i.it, ptr %i.iu, align 8, !tbaa !437
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.ix = load <2 x double>, ptr %i.iv, align 8, !tbaa !118
  store <2 x double> %i.ix, ptr %i.iw, align 8, !tbaa !118
  br label %.lr.ph56.i.prol.loopexit

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %indvars.iv62.i.unr = phi i64 [ %i.gu, %.lr.ph56.i.preheader ], [ %indvars.iv.next63.i.prol, %.lr.ph56.i.prol ]
  %i.iy = add nsw i64 %i.j, -1
  %i.iz = icmp eq i64 %i.iy, %i.gu
  br i1 %i.iz, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit, label %.lr.ph56.i

.lr.ph.split.i88:                                 ; preds = %.lr.ph.split.i88.preheader, %.lr.ph.split.i88
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %.lr.ph.split.i88 ], [ %indvars.iv.i89.ph, %.lr.ph.split.i88.preheader ] ; 4 uses
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i89
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24 ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !440
  %i.jd = fmul double %i.jc, %i.hb
  %i.je = trunc i64 %indvars.iv.i89 to i32
  %i.jf = sub i32 %.tr98, %i.je
  %i.jg = sitofp i32 %i.jf to double
  %i.jh = fmul double %i.gx, %i.jg
  %i.ji = fdiv double %i.jd, %i.jh
  store double %i.ji, ptr %i.jb, align 8, !tbaa !440
  %indvars.iv.next.i90 = add nsw i64 %indvars.iv.i89, -1
  %.not.i91 = icmp eq i64 %indvars.iv.i89, 0
  br i1 %.not.i91, label %.preheader.i, label %.lr.ph.split.i88, !llvm.loop !1370

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i.1, %.lr.ph56.i ], [ %indvars.iv62.i.unr, %.lr.ph56.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !437
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv62.i ; 2 uses
  store i32 %i.jk, ptr %i.jl, align 8, !tbaa !437
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = load <2 x double>, ptr %i.jm, align 8, !tbaa !118
  store <2 x double> %i.jo, ptr %i.jn, align 8, !tbaa !118
  %indvars.iv.next63.i.1 = add nuw nsw i64 %indvars.iv62.i, 2 ; 3 uses
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i.1 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !437
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next63.i ; 2 uses
  store i32 %i.jq, ptr %i.jr, align 8, !tbaa !437
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.ju = load <2 x double>, ptr %i.js, align 8, !tbaa !118
  store <2 x double> %i.ju, ptr %i.jt, align 8, !tbaa !118
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next63.i.1, %i.j
  br i1 %exitcond.not.i.1, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit, label %.lr.ph56.i, !llvm.loop !41

_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit: ; preds = %.lr.ph56.i, %.lr.ph56.i.prol.loopexit
  %.pre.pre = load i32, ptr %i.do, align 4, !tbaa !88
  br label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit

_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit: ; preds = %bb.o, %.preheader.i, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit, %._crit_edge
  %.pre-phi = phi i32 [ %.tr98, %.preheader.i ], [ %.pre123, %._crit_edge ], [ %.tr98, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ %.pre123, %bb.o ] ; 2 uses
  %i.jv = phi i32 [ %i.dp, %.preheader.i ], [ %i.dp, %._crit_edge ], [ %.pre.pre, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ %i.dp, %bb.o ]
  %.073 = phi double [ %i.gx, %.preheader.i ], [ 1.000000e+00, %._crit_edge ], [ %i.gx, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ 1.000000e+00, %bb.o ]
  %.072 = phi double [ %i.gz, %.preheader.i ], [ 1.000000e+00, %._crit_edge ], [ %i.gz, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit.loopexit ], [ 1.000000e+00, %bb.o ]
  %11 = insertelement <2 x double> poison, double %.073, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %i.gp, %12              ; 2 uses
  %i.jw = extractelement <2 x double> %13, i64 0
  tail call void @_ZNK8LightGBM4Tree8TreeSHAPEPKdPdiiPNS0_11PathElementEddi(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i, i32 noundef %.pre-phi, ptr noundef nonnull %i.k, double noundef %i.jw, double noundef %.072, i32 noundef %i.jv)
  %i.jx = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.dm
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !88
  %14 = extractelement <2 x double> %13, i64 1
  br label %tailrecurse

._crit_edge111:                                   ; preds = %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8LightGBM4Tree13TreeSHAPByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEPSA_iiPNS0_11PathElementEddi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, double noundef %6, double noundef %7, i32 noundef %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %tailrecurse

tailrecurse:                                      ; preds = %._crit_edge.thread, %bb.a
  %.tr123 = phi i32 [ %3, %bb.a ], [ %i.if, %._crit_edge.thread ] ; 3 uses
  %.tr124 = phi i32 [ %4, %bb.a ], [ %.pre-phi, %._crit_edge.thread ] ; 28 uses
  %.tr125 = phi ptr [ %5, %bb.a ], [ %i.n, %._crit_edge.thread ] ; 3 uses
  %.tr126 = phi double [ %6, %bb.a ], [ %14, %._crit_edge.thread ] ; 3 uses
  %.tr127 = phi double [ %7, %bb.a ], [ 0.000000e+00, %._crit_edge.thread ] ; 3 uses
  %.tr128 = phi i32 [ %8, %bb.a ], [ %i.mo, %._crit_edge.thread ] ; 2 uses
  %i.m = sext i32 %.tr124 to i64                  ; 7 uses
  %i.n = getelementptr inbounds [32 x i8], ptr %.tr125, i64 %i.m ; 27 uses
  %i.o = icmp sgt i32 %.tr124, 0                  ; 2 uses
  br i1 %i.o, label %bb.b, label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge

bb.b:                                             ; preds = %tailrecurse
  %.not = icmp eq i32 %.tr124, 1
  br i1 %.not, label %bb.d, label %bb.c, !prof !208

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.m, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %.tr125, i64 %.idx, i1 false)
  br label %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.tr125, i64 32, i1 false), !tbaa.struct !441
  br label %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit: ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.m ; 4 uses
  store i32 %.tr128, ptr %i.p, align 8, !tbaa !437
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store double %.tr126, ptr %i.q, align 8, !tbaa !438
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store double %.tr127, ptr %i.r, align 8, !tbaa !439
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !440
  %i.t = add nuw nsw i32 %.tr124, 1
  %i.u = uitofp nneg i32 %i.t to double
  %i.v = zext nneg i32 %.tr124 to i64
  %9 = insertelement <2 x double> poison, double %.tr126, i64 0
  %10 = insertelement <2 x double> %9, double %.tr127, i64 1
  %i.w = insertelement <2 x double> poison, double %i.u, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit
  %i.y = phi double [ 0.000000e+00, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit ], [ %i.as, %bb.e ]
  %indvars.iv.i = phi i64 [ %i.v, %_ZSt4copyIPN8LightGBM4Tree11PathElementES3_ET0_T_S5_S4_.exit ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !440
  %i.ac = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = trunc i64 %indvars.iv.next.i to i32
  %i.ag = sub i32 %.tr124, %i.af
  %i.ah = uitofp nneg i32 %i.ac to double
  %i.ai = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %10, %i.aj
  %i.al = sitofp i32 %i.ag to double
  %i.am = insertelement <2 x double> poison, double %i.al, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.ah, i64 1
  %i.ao = fmul <2 x double> %i.ak, %i.an
  %i.ap = fdiv <2 x double> %i.ao, %i.x           ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 1
  %i.ar = fadd double %i.y, %i.aq
  store double %i.ar, ptr %i.ae, align 8, !tbaa !440
  %i.as = extractelement <2 x double> %i.ap, i64 0 ; 2 uses
  store double %i.as, ptr %i.aa, align 8, !tbaa !440
  %i.at = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.at, label %bb.e, label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit, !llvm.loop !39

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge: ; preds = %tailrecurse
  %i.au = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.m ; 4 uses
  store i32 %.tr128, ptr %i.au, align 8, !tbaa !437
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %.tr126, ptr %i.av, align 8, !tbaa !438
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store double %.tr127, ptr %i.aw, align 8, !tbaa !439
  %i.ax = icmp eq i32 %.tr124, 0
  %i.ay = uitofp i1 %i.ax to double
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store double %i.ay, ptr %i.az, align 8, !tbaa !440
  br label %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit

_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit: ; preds = %bb.e, %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit.critedge
  %i.ba = icmp slt i32 %.tr123, 0
  br i1 %i.ba, label %.preheader, label %bb.i

.preheader:                                       ; preds = %_ZN8LightGBM4Tree10ExtendPathEPNS0_11PathElementEiddi.exit
  %.not82160 = icmp slt i32 %.tr124, 1
  br i1 %.not82160, label %._crit_edge162, label %.lr.ph.i83.lr.ph

.lr.ph.i83.lr.ph:                                 ; preds = %.preheader
  %.034.i = add nsw i32 %.tr124, -1               ; 2 uses
  %i.bb = add nuw i32 %.tr124, 1                  ; 2 uses
  %i.bc = uitofp nneg i32 %i.bb to double         ; 5 uses
  %i.bd = zext i32 %.034.i to i64                 ; 4 uses
  %i.be = zext nneg i32 %.tr124 to i64
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bi = xor i32 %.tr123, -1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count198 = zext i32 %i.bb to i64
  %i.bl = and i32 %.tr124, 1
  %lcmp.mod321.not = icmp eq i32 %i.bl, 0
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.bd
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = fdiv double 1.000000e+00, %i.bc
  %indvars.iv.next.i85.prol = add nsw i64 %i.bd, -1
  %i.bp = icmp eq i32 %.034.i, 0
  br label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83.lr.ph, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit
  %indvars.iv190 = phi i64 [ 1, %.lr.ph.i83.lr.ph ], [ %indvars.iv.next191, %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv190 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !439 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !438 ; 5 uses
  %i.bv = fcmp une double %i.bs, 0.000000e+00
  %i.bw = fneg double %i.bu
  br i1 %i.bv, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i83
  br i1 %lcmp.mod321.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.bx = load double, ptr %i.bn, align 8, !tbaa !440
  %i.by = fdiv double %i.bx, %i.bu
  %i.bz = fdiv double %i.by, %i.bo
  %.1.i.prol = fadd double %i.bz, 0.000000e+00    ; 2 uses
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %.1.i.lcssa.unr = phi double [ poison, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  %indvars.iv.i84.unr = phi i64 [ %i.bd, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i85.prol, %.lr.ph.split.i.prol ]
  %.03036.i.unr = phi double [ 0.000000e+00, %.lr.ph.split.i.preheader ], [ %.1.i.prol, %.lr.ph.split.i.prol ]
  br i1 %i.bp, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i83
  %i.ca = load double, ptr %i.bg, align 8, !tbaa !440
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv41.i = phi i64 [ %i.bd, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph.split.us.i ] ; 4 uses
  %.0.in37.us.i = phi i32 [ %.tr124, %.lr.ph.split.us.preheader.i ], [ %i.ci, %.lr.ph.split.us.i ]
  %.03036.us.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i ], [ %.1.us.i, %.lr.ph.split.us.i ]
  %.03135.us.i = phi double [ %i.ca, %.lr.ph.split.us.preheader.i ], [ %i.cn, %.lr.ph.split.us.i ]
  %i.cb = fmul double %.03135.us.i, %i.bc
  %i.cc = uitofp nneg i32 %.0.in37.us.i to double
  %i.cd = fmul double %i.bs, %i.cc
  %i.ce = fdiv double %i.cb, %i.cd                ; 2 uses
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv41.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !440
  %i.ci = trunc i64 %indvars.iv41.i to i32        ; 2 uses
  %i.cj = sub i32 %.tr124, %i.ci
  %i.ck = sitofp i32 %i.cj to double
  %i.cl = fdiv double %i.ck, %i.bc
  %i.cm = fmul double %i.ce, %i.bw
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cl, double %i.ch)
  %.1.us.i = fadd double %.03036.us.i, %i.ce      ; 2 uses
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, -1
  %.not46.i = icmp eq i64 %indvars.iv41.i, 0
  br i1 %.not46.i, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.us.i, !llvm.loop !42

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %indvars.iv.i84 = phi i64 [ %indvars.iv.next.i85.1, %.lr.ph.split.i ], [ %indvars.iv.i84.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %.03036.i = phi double [ %.1.i.1, %.lr.ph.split.i ], [ %.03036.i.unr, %.lr.ph.split.i.prol.loopexit ]
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.i84
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !440
  %i.cr = fdiv double %i.cq, %i.bu
  %i.cs = trunc i64 %indvars.iv.i84 to i32
  %i.ct = sub i32 %.tr124, %i.cs
  %i.cu = sitofp i32 %i.ct to double
  %i.cv = fdiv double %i.cu, %i.bc
  %i.cw = fdiv double %i.cr, %i.cv
  %.1.i = fadd double %.03036.i, %i.cw
  %indvars.iv.next.i85 = add nsw i64 %indvars.iv.i84, -1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next.i85
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !440
  %i.da = fdiv double %i.cz, %i.bu
  %i.db = trunc i64 %indvars.iv.next.i85 to i32
  %i.dc = sub i32 %.tr124, %i.db
  %i.dd = sitofp i32 %i.dc to double
  %i.de = fdiv double %i.dd, %i.bc
  %i.df = fdiv double %i.da, %i.de
  %.1.i.1 = fadd double %.1.i, %i.df              ; 2 uses
  %indvars.iv.next.i85.1 = add nsw i64 %indvars.iv.i84, -2
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i85, 0
  br i1 %.not.i.1, label %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit, label %.lr.ph.split.i, !llvm.loop !42

_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit: ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i
  %.030.lcssa.i = phi double [ %.1.us.i, %.lr.ph.split.us.i ], [ %.1.i.lcssa.unr, %.lr.ph.split.i.prol.loopexit ], [ %.1.i.1, %.lr.ph.split.i ]
  %i.dg = fsub double %i.bs, %i.bu
  %i.dh = fmul double %.030.lcssa.i, %i.dg
  %i.di = load ptr, ptr %i.bh, align 8, !tbaa !68
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.bj
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !118
  %i.dl = load i32, ptr %i.bq, align 8, !tbaa !88 ; 3 uses
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = load i64, ptr %i.bk, align 8, !tbaa !443 ; 2 uses
  %i.do = urem i64 %i.dm, %i.dn                   ; 3 uses
  %i.dp = load ptr, ptr %2, align 8, !tbaa !444
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !423 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !418 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !88
  %i.dv = icmp eq i32 %i.dl, %i.du
  br i1 %i.dv, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.dw = icmp eq i32 %i.dl, %i.dz
  br i1 %i.dw, label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1371

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.dx, %bb.g ], [ %i.ds, %bb.f ]
  %i.dx = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !418 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !88 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = urem i64 %i.ea, %i.dn
  %.not19.i.i.i.i = icmp eq i64 %i.eb, %i.do
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !1371

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit.i.i, !llvm.loop !1371

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZN8LightGBM4Tree14UnwoundPathSumEPKNS0_11PathElementEii.exit
  %i.ec = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43 ; 5 uses
  store ptr null, ptr %i.ec, align 8, !tbaa !418
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.bq, align 8, !tbaa !88
  store i32 %i.ee, ptr %i.ed, align 8, !tbaa !1378
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store double 0.000000e+00, ptr %i.ef, align 8, !tbaa !1379
  %i.eg = invoke ptr @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %2, i64 noundef %i.do, i64 noundef %i.dm, ptr noundef nonnull %i.ec, i64 noundef 1)
          to label %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit unwind label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef 24) #41
  resume { ptr, i32 } %i.eh

end_hunk_0
begin_hunk_1_@_ZNK8LightGBM4Tree13TreeSHAPByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEPSA_iiPNS0_11PathElementEddi:bb.a

.preheader260:                                    ; preds = %.loopexit133, %bb.o
  %.sroa.06.0.in.i.i.i95 = phi ptr [ %.sroa.06.0.i.i.i96, %bb.o ], [ %i.d, %.loopexit133 ]
  %.sroa.06.0.i.i.i96 = load ptr, ptr %.sroa.06.0.in.i.i.i95, align 8, !tbaa !418 ; 4 uses
  %.not.i.i.i97 = icmp eq ptr %.sroa.06.0.i.i.i96, null
  br i1 %.not.i.i.i97, label %.loopexit.i.i93, label %bb.o

bb.o:                                             ; preds = %.preheader260
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i96, i64 8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !88
  %i.fk = icmp eq i32 %i.eo, %i.fj
  br i1 %i.fk, label %.loopexit, label %.preheader260, !llvm.loop !1373

.thread:                                          ; preds = %.loopexit133..thread_crit_edge, %bb.l
  %.pre-phi207 = phi i64 [ %.pre206, %.loopexit133..thread_crit_edge ], [ %i.eu, %bb.l ] ; 2 uses
  %i.fl = phi ptr [ %.pre200, %.loopexit133..thread_crit_edge ], [ %i.ev, %bb.l ]
  %i.fm = phi i64 [ %.pre, %.loopexit133..thread_crit_edge ], [ %i.et, %bb.l ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.pre-phi207
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !423 ; 2 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i87, label %.loopexit.i.i93, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !418 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !88
  %i.fs = icmp eq i32 %i.eo, %i.fr
  br i1 %i.fs, label %.loopexit, label %.lr.ph.i.i.i.i.i88

bb.q:                                             ; preds = %bb.r
  %i.ft = icmp eq i32 %i.eo, %i.fw
  br i1 %i.ft, label %.loopexit, label %.lr.ph.i.i.i.i.i88, !llvm.loop !1371

.lr.ph.i.i.i.i.i88:                               ; preds = %bb.p, %bb.q
  %.020.i.i.i.i.i89 = phi ptr [ %i.fu, %bb.q ], [ %i.fp, %bb.p ]
  %i.fu = load ptr, ptr %.020.i.i.i.i.i89, align 8, !tbaa !418 ; 4 uses
  %.not18.i.i.i.i.i90 = icmp eq ptr %i.fu, null
  br i1 %.not18.i.i.i.i.i90, label %.loopexit.i.i93, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i88
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !88 ; 2 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = urem i64 %i.fx, %i.fm
  %.not19.i.i.i.i.i91 = icmp eq i64 %i.fy, %.pre-phi207
  br i1 %.not19.i.i.i.i.i91, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i.i92, !llvm.loop !1371

..loopexit_crit_edge21.i.i.i.i.i92:               ; preds = %bb.r
  br label %.loopexit.i.i93, !llvm.loop !1371

.loopexit.i.i93:                                  ; preds = %.thread, %.lr.ph.i.i.i.i.i88, %.preheader260, %..loopexit_crit_edge21.i.i.i.i.i92
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.189) #42
  unreachable

.loopexit:                                        ; preds = %bb.q, %bb.o, %bb.p
  %.sroa.06.1.i.i.i94 = phi ptr [ %.sroa.06.0.i.i.i96, %bb.o ], [ %i.fp, %bb.p ], [ %i.fu, %bb.q ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i94, i64 16
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !118 ; 3 uses
  %i.gb = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ek
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !202 ; 2 uses
  %i.ge = and i8 %i.gd, 1
  %.not.i98 = icmp eq i8 %i.ge, 0
  br i1 %.not.i98, label %bb.u, label %bb.s

.thread118:                                       ; preds = %.lr.ph.i.i.i.i.i, %.preheader263, %bb.k, %..loopexit_crit_edge21.i.i.i.i.i
  %i.gf = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ek
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !202 ; 2 uses
  %i.gi = and i8 %i.gh, 1
  %.not.i98119 = icmp eq i8 %i.gi, 0
  br i1 %.not.i98119, label %bb.u, label %.thread120

bb.s:                                             ; preds = %.loopexit
  %i.gj = fcmp uno double %i.ga, 0.000000e+00
  br i1 %i.gj, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %.thread120

.thread120:                                       ; preds = %.thread118, %bb.s
  %i.gk = phi double [ %i.ga, %bb.s ], [ 0.000000e+00, %.thread118 ]
  %i.gl = fptosi double %i.gk to i32              ; 3 uses
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %bb.t

bb.t:                                             ; preds = %.thread120
  %i.gn = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ek
  %i.gp = load double, ptr %i.go, align 8, !tbaa !118
  %i.gq = fptosi double %i.gp to i32
  %i.gr = sext i32 %i.gq to i64
  %i.gs = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.gt = getelementptr [4 x i8], ptr %i.gs, i64 %i.gr ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !88 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gt, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !88
  %i.gx = sub nsw i32 %i.gw, %i.gu
  %i.gy = lshr i32 %i.gl, 5                       ; 2 uses
  %.not.i.i.i99 = icmp slt i32 %i.gy, %i.gx
  br i1 %.not.i.i.i99, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i: ; preds = %bb.t
  %i.gz = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.ha = sext i32 %i.gu to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = zext nneg i32 %i.gy to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !88
  %i.hf = and i32 %i.gl, 31
  %i.hg = lshr i32 %i.he, %i.hf
  %i.hh = trunc i32 %i.hg to i1
  br i1 %i.hh, label %_ZNK8LightGBM4Tree8DecisionEdi.exit, label %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i

_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i: ; preds = %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, %bb.t
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit

bb.u:                                             ; preds = %.thread118, %.loopexit
  %i.hi = phi i8 [ %i.gh, %.thread118 ], [ %i.gd, %.loopexit ] ; 2 uses
  %i.hj = phi double [ 0.000000e+00, %.thread118 ], [ %i.ga, %.loopexit ] ; 2 uses
  %i.hk = lshr i8 %i.hi, 2
  %i.hl = and i8 %i.hk, 3                         ; 2 uses
  %i.hm = fcmp uno double %i.hj, 0.000000e+00
  %i.hn = icmp ne i8 %i.hl, 2
  %or.cond.i.i = and i1 %i.hm, %i.hn
  %.017.i.i = select i1 %or.cond.i.i, double 0.000000e+00, double %i.hj ; 3 uses
  switch i8 %i.hl, label %bb.y [
    i8 1, label %bb.v
    i8 2, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.ho = tail call double @llvm.fabs.f64(double %.017.i.i)
  %i.hp = fcmp ugt double %i.ho, f0x38AA95A5C0000000
  br i1 %i.hp, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.hq = fcmp uno double %.017.i.i, 0.000000e+00
  br i1 %i.hq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hr = and i8 %i.hi, 2
  %.not.i.i100 = icmp eq i8 %i.hr, 0
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.hs = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ek
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !118
  %i.hv = fcmp ugt double %.017.i.i, %i.hu
  br label %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i

_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i:  ; preds = %bb.y, %bb.x
  %.sink20.i.i = phi i1 [ %i.hv, %bb.y ], [ %.not.i.i100, %bb.x ]
  %.19.i.i = select i1 %.sink20.i.i, i64 40, i64 16
  br label %_ZNK8LightGBM4Tree8DecisionEdi.exit

_ZNK8LightGBM4Tree8DecisionEdi.exit:              ; preds = %bb.s, %.thread120, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i
  %.sink.i = phi i64 [ 40, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.thread.i.i ], [ 40, %.thread120 ], [ 40, %bb.s ], [ %.19.i.i, %_ZNK8LightGBM4Tree17NumericalDecisionEdi.exit.i ], [ 16, %_ZN8LightGBM6CommonL12FindInBitsetIiEEbPKjiT_.exit.i.i ]
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !62
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ek
  %.0.i = load i32, ptr %i.hy, align 4, !tbaa !88 ; 5 uses
  %i.hz = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ek
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !88 ; 2 uses
  %i.ic = icmp eq i32 %.0.i, %i.ib
  br i1 %i.ic, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK8LightGBM4Tree8DecisionEdi.exit
  %i.id = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ek
  %.pre201 = load i32, ptr %i.ie, align 4, !tbaa !88
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK8LightGBM4Tree8DecisionEdi.exit, %bb.z
  %i.if = phi i32 [ %.pre201, %bb.z ], [ %i.ib, %_ZNK8LightGBM4Tree8DecisionEdi.exit ] ; 4 uses
  %i.ig = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ek
  %i.ii = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !88
  %i.ik = sitofp i32 %i.ij to double
  %i.il = zext nneg i32 %.0.i to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.il
  %i.in = xor i32 %.0.i, -1
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.io
  %i.iq = icmp slt i32 %.0.i, 0
  %.in.i101 = select i1 %i.iq, ptr %i.ip, ptr %i.im
  %i.ir = load i32, ptr %.in.i101, align 4, !tbaa !88
  %i.is = zext nneg i32 %i.if to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.is
  %i.iu = xor i32 %i.if, -1
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.iv
  %i.ix = icmp slt i32 %i.if, 0
  %.in.i102 = select i1 %i.ix, ptr %i.iw, ptr %i.it
  %i.iy = load i32, ptr %.in.i102, align 4, !tbaa !88
  %i.iz = insertelement <2 x i32> poison, i32 %i.ir, i64 0
  %i.ja = insertelement <2 x i32> %i.iz, i32 %i.iy, i64 1
  %i.jb = sitofp <2 x i32> %i.ja to <2 x double>
  %i.jc = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = fdiv <2 x double> %i.jb, %i.jd
  %.not80156 = icmp slt i32 %.tr124, 0
  %.pre208 = add i32 %.tr124, 1                   ; 5 uses
  br i1 %.not80156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %wide.trip.count = zext i32 %.pre208 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !437
  %i.jh = icmp eq i32 %i.jg, %i.eo
  br i1 %i.jh, label %._crit_edge.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.ab, !llvm.loop !1374

._crit_edge.loopexit:                             ; preds = %bb.ab
  %i.ji = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa, %._crit_edge.loopexit
  %.0.lcssa = phi i32 [ %i.ji, %._crit_edge.loopexit ], [ 0, %bb.aa ] ; 3 uses
  %.not81 = icmp eq i32 %.0.lcssa, %.pre208
  br i1 %.not81, label %._crit_edge.thread, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.jj = zext nneg i32 %.0.lcssa to i64          ; 6 uses
  %i.jk = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !438 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !439 ; 3 uses
  br i1 %i.o, label %.lr.ph.i103, label %.preheader.i

.lr.ph.i103:                                      ; preds = %bb.ad
  %.04851.i = add nsw i32 %.tr124, -1             ; 3 uses
  %i.jp = fcmp une double %i.jo, 0.000000e+00
  %i.jq = uitofp nneg i32 %.pre208 to double      ; 4 uses
  br i1 %i.jp, label %.lr.ph.split.us.preheader.i109, label %.lr.ph.split.preheader.i104

.lr.ph.split.preheader.i104:                      ; preds = %.lr.ph.i103
  %i.jr = zext i32 %.04851.i to i64               ; 3 uses
  %i.js = zext nneg i32 %.tr124 to i64            ; 2 uses
  %min.iters.check = icmp eq i32 %.tr124, 1
  br i1 %min.iters.check, label %.lr.ph.split.i105.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader.i104
  %n.vec = and i64 %i.js, 2147483646              ; 3 uses
  %i.jt = sub nsw i64 %i.jr, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <2 x i32> poison, i32 %.tr124, i64 0
  %broadcast.splat288 = shufflevector <2 x i32> %broadcast.splatinsert287, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <2 x double> poison, double %i.jm, i64 0
  %broadcast.splat290 = shufflevector <2 x double> %broadcast.splatinsert289, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert291 = insertelement <2 x i32> poison, i32 %.04851.i, i64 0
  %broadcast.splat292 = shufflevector <2 x i32> %broadcast.splatinsert291, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ju = add <2 x i32> %broadcast.splat292, <i32 0, i32 -1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %i.ju, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.jv = sub i64 %i.jr, %index                   ; 2 uses
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.jv
  %i.jx = getelementptr [32 x i8], ptr %i.n, i64 %i.jv
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 24 ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jx, i64 -8     ; 2 uses
  %i.ka = load double, ptr %i.jy, align 8, !tbaa !440
  %i.kb = load double, ptr %i.jz, align 8, !tbaa !440
  %i.kc = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kd = insertelement <2 x double> %i.kc, double %i.kb, i64 1
  %i.ke = fmul <2 x double> %i.kd, %broadcast.splat
  %i.kf = sub <2 x i32> %broadcast.splat288, %vec.ind
  %i.kg = sitofp <2 x i32> %i.kf to <2 x double>
  %i.kh = fmul <2 x double> %broadcast.splat290, %i.kg
  %i.ki = fdiv <2 x double> %i.ke, %i.kh          ; 2 uses
  %i.kj = extractelement <2 x double> %i.ki, i64 0
  store double %i.kj, ptr %i.jy, align 8, !tbaa !440
  %i.kk = extractelement <2 x double> %i.ki, i64 1
  store double %i.kk, ptr %i.jz, align 8, !tbaa !440
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 -2)
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !1375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.js
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.split.i105.preheader

.lr.ph.split.i105.preheader:                      ; preds = %.lr.ph.split.preheader.i104, %middle.block
  %indvars.iv.i106.ph = phi i64 [ %i.jr, %.lr.ph.split.preheader.i104 ], [ %i.jt, %middle.block ]
  br label %.lr.ph.split.i105

.lr.ph.split.us.preheader.i109:                   ; preds = %.lr.ph.i103
  %i.km = zext nneg i32 %.tr124 to i64
  %i.kn = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !440
  %i.kq = zext nneg i32 %.04851.i to i64
  br label %.lr.ph.split.us.i110

.lr.ph.split.us.i110:                             ; preds = %.lr.ph.split.us.i110, %.lr.ph.split.us.preheader.i109
  %indvars.iv59.i = phi i64 [ %i.kq, %.lr.ph.split.us.preheader.i109 ], [ %indvars.iv.next60.i, %.lr.ph.split.us.i110 ] ; 4 uses
  %.048.in53.us.i = phi i32 [ %.tr124, %.lr.ph.split.us.preheader.i109 ], [ %i.kz, %.lr.ph.split.us.i110 ]
  %.04952.us.i = phi double [ %i.kp, %.lr.ph.split.us.preheader.i109 ], [ %i.le, %.lr.ph.split.us.i110 ]
  %i.kr = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv59.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24 ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !440
  %i.ku = fmul double %.04952.us.i, %i.jq
  %i.kv = uitofp nneg i32 %.048.in53.us.i to double
  %i.kw = fmul double %i.jo, %i.kv
  %i.kx = fdiv double %i.ku, %i.kw                ; 2 uses
  store double %i.kx, ptr %i.ks, align 8, !tbaa !440
  %i.ky = fmul double %i.jm, %i.kx
  %i.kz = trunc i64 %indvars.iv59.i to i32        ; 2 uses
  %i.la = sub i32 %.tr124, %i.kz
  %i.lb = sitofp i32 %i.la to double
  %i.lc = fmul double %i.ky, %i.lb
  %i.ld = fdiv double %i.lc, %i.jq
  %i.le = fsub double %i.kt, %i.ld
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, -1
  %.not67.i = icmp eq i64 %indvars.iv59.i, 0
  br i1 %.not67.i, label %.preheader.i, label %.lr.ph.split.us.i110, !llvm.loop !40

.preheader.i:                                     ; preds = %.lr.ph.split.i105, %.lr.ph.split.us.i110, %middle.block, %bb.ad
  %i.lf = icmp slt i32 %.0.lcssa, %.tr124
  br i1 %i.lf, label %.lr.ph56.i.preheader, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit

.lr.ph56.i.preheader:                             ; preds = %.preheader.i
  %i.lg = sub nsw i64 %i.m, %i.jj
  %xtraiter = and i64 %i.lg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader
  %indvars.iv.next63.i.prol = add nuw nsw i64 %i.jj, 1 ; 2 uses
  %i.lh = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next63.i.prol ; 2 uses
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !437
  %i.lj = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.jj ; 2 uses
  store i32 %i.li, ptr %i.lj, align 8, !tbaa !437
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lm = load <2 x double>, ptr %i.lk, align 8, !tbaa !118
  store <2 x double> %i.lm, ptr %i.ll, align 8, !tbaa !118
  br label %.lr.ph56.i.prol.loopexit

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %indvars.iv62.i.unr = phi i64 [ %i.jj, %.lr.ph56.i.preheader ], [ %indvars.iv.next63.i.prol, %.lr.ph56.i.prol ]
  %i.ln = add nsw i64 %i.m, -1
  %i.lo = icmp eq i64 %i.ln, %i.jj
  br i1 %i.lo, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, label %.lr.ph56.i

.lr.ph.split.i105:                                ; preds = %.lr.ph.split.i105.preheader, %.lr.ph.split.i105
  %indvars.iv.i106 = phi i64 [ %indvars.iv.next.i107, %.lr.ph.split.i105 ], [ %indvars.iv.i106.ph, %.lr.ph.split.i105.preheader ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.i106
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 24 ; 2 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !440
  %i.ls = fmul double %i.lr, %i.jq
  %i.lt = trunc i64 %indvars.iv.i106 to i32
  %i.lu = sub i32 %.tr124, %i.lt
  %i.lv = sitofp i32 %i.lu to double
  %i.lw = fmul double %i.jm, %i.lv
  %i.lx = fdiv double %i.ls, %i.lw
  store double %i.lx, ptr %i.lq, align 8, !tbaa !440
  %indvars.iv.next.i107 = add nsw i64 %indvars.iv.i106, -1
  %.not.i108 = icmp eq i64 %indvars.iv.i106, 0
  br i1 %.not.i108, label %.preheader.i, label %.lr.ph.split.i105, !llvm.loop !1376

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i.1, %.lr.ph56.i ], [ %indvars.iv62.i.unr, %.lr.ph56.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.ly = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next63.i ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !437
  %i.ma = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv62.i ; 2 uses
  store i32 %i.lz, ptr %i.ma, align 8, !tbaa !437
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.md = load <2 x double>, ptr %i.mb, align 8, !tbaa !118
  store <2 x double> %i.md, ptr %i.mc, align 8, !tbaa !118
  %indvars.iv.next63.i.1 = add nuw nsw i64 %indvars.iv62.i, 2 ; 3 uses
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next63.i.1 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !437
  %i.mg = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next63.i ; 2 uses
  store i32 %i.mf, ptr %i.mg, align 8, !tbaa !437
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mj = load <2 x double>, ptr %i.mh, align 8, !tbaa !118
  store <2 x double> %i.mj, ptr %i.mi, align 8, !tbaa !118
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next63.i.1, %i.m
  br i1 %exitcond.not.i.1, label %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, label %.lr.ph56.i, !llvm.loop !41

_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit: ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %.preheader.i
  %.pre202 = load i32, ptr %i.em, align 4, !tbaa !88
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.ac, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit, %._crit_edge
  %.pre-phi = phi i32 [ %.tr124, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ], [ %.pre208, %._crit_edge ], [ %.pre208, %bb.ac ] ; 2 uses
  %i.mk = phi i32 [ %.pre202, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ], [ %i.eo, %._crit_edge ], [ %i.eo, %bb.ac ]
  %.075 = phi double [ %i.jm, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ], [ 1.000000e+00, %._crit_edge ], [ 1.000000e+00, %bb.ac ]
  %.074 = phi double [ %i.jo, %_ZN8LightGBM4Tree10UnwindPathEPNS0_11PathElementEii.exit ], [ 1.000000e+00, %._crit_edge ], [ 1.000000e+00, %bb.ac ]
  %11 = insertelement <2 x double> poison, double %.075, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %i.je, %12              ; 2 uses
  %i.ml = extractelement <2 x double> %13, i64 0
  tail call void @_ZNK8LightGBM4Tree13TreeSHAPByMapERKSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEPSA_iiPNS0_11PathElementEddi(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, i32 noundef %.0.i, i32 noundef %.pre-phi, ptr noundef %i.n, double noundef %i.ml, double noundef %.074, i32 noundef %i.mk)
  %i.mm = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.ek
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !88
  %14 = extractelement <2 x double> %13, i64 1
  br label %tailrecurse

._crit_edge162:                                   ; preds = %_ZNSt13unordered_mapIidSt4hashIiESt8equal_toIiESaISt4pairIKidEEEixERS5_.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !431
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !443
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !445
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #12 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !431
  invoke void @__cxa_rethrow() #42
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #44
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !443
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !444    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !423  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !418
  store ptr %i.w, ptr %3, align 8, !tbaa !418
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !423
  store ptr %3, ptr %i.x, align 8, !tbaa !418
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !446
  store ptr %i.z, ptr %3, align 8, !tbaa !418
  store ptr %3, ptr %i.y, align 8, !tbaa !446
  %i.aa = load ptr, ptr %3, align 8, !tbaa !418   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !443
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !88
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !423
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !423
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !445
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !445
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !208

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1381
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !208

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #42
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #43 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !446  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !446
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !418 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !88
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !423  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !446
  store ptr %i.p, ptr %.02530, align 8, !tbaa !418
  store ptr %.02530, ptr %i.g, align 8, !tbaa !446
  store ptr %i.g, ptr %i.n, align 8, !tbaa !423
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !418
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !423
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !418
  store ptr %i.s, ptr %.02530, align 8, !tbaa !418
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !423
  store ptr %.02530, ptr %i.t, align 8, !tbaa !418
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1380

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !444    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !443
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #41
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !443
end_hunk_1
