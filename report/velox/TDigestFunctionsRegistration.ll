inline.NumInlined: 17435
inline.NumDeleted: 4964
loop-unroll.NumCompletelyUnrolled: 145
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES2_lET_S7_S7_S7_T1_S8_T0_S8_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.g = load i16, ptr %1, align 2, !tbaa !951
  store i16 %i.g, ptr %5, align 2, !tbaa !951
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 1                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !235

bb.g:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES2_ET0_T_S8_S7_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [2 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.m, ptr align 2 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES2_ET0_T_S8_S7_.exit
  %i.n = icmp eq i64 %i.i, 2
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -2
  %i.p = load i16, ptr %0, align 2, !tbaa !951
  store i16 %i.p, ptr %i.o, align 2, !tbaa !951
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !235

bb.j:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %0, ptr align 2 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit

bb.k:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit
  %i.q = icmp eq i64 %i.d, 2
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.k
  %i.r = load i16, ptr %5, align 2, !tbaa !951
  store i16 %i.r, ptr %0, align 2, !tbaa !951
  br label %_ZSt4moveIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit

_ZSt4moveIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 2
  br i1 %i.w, label %bb.p, label %bb.q, !prof !235

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %5, ptr align 2 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES2_ET0_T_S8_S7_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 2
  br i1 %i.x, label %bb.r, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES2_ET0_T_S8_S7_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load i16, ptr %0, align 2, !tbaa !951
  store i16 %i.y, ptr %5, align 2, !tbaa !951
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES2_ET0_T_S8_S7_.exit37

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES2_ET0_T_S8_S7_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 2
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !235

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES2_ET0_T_S8_S7_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %0, ptr align 2 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES2_ET0_T_S8_S7_.exit37
  %i.ac = icmp eq i64 %i.aa, 2
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %bb.t
  %i.ad = load i16, ptr %1, align 2, !tbaa !951
  store i16 %i.ad, ptr %0, align 2, !tbaa !951
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 1                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !235

bb.v:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ah, ptr align 2 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit
  %i.ai = icmp eq i64 %i.v, 2
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -2
  %i.ak = load i16, ptr %5, align 2, !tbaa !951
  store i16 %i.ak, ptr %i.aj, align 2, !tbaa !951
  br label %_ZSt13move_backwardIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit

_ZSt13move_backwardIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [2 x i8], ptr %2, i64 %i.al
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.an = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit, %_ZSt4moveIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit
  %.sroa.032.0 = phi ptr [ %i.s, %_ZSt4moveIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit ], [ %i.an, %bb.y ], [ %i.am, %_ZSt13move_backwardIPsN9__gnu_cxx17__normal_iteratorIS0_St6vectorIsSaIsEEEEET0_T_S8_S7_.exit ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions7TDigestISaIdEE9mergeImplILb1EEEvdPKdS7_i(ptr noundef nonnull align 8 dereferenceable(81) %0, double noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.519", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = sext i32 %4 to i64
  %.idx = shl nsw i64 %i.a, 3                     ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %.idx
  %.not7.i = icmp eq i32 %4, 0
  br i1 %.not7.i, label %_ZSt10accumulateIPKddET0_T_S3_S2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = add nsw i64 %.idx, -8                    ; 2 uses
  %i.d = lshr exact i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi double [ %i.g, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.068.i.prol = phi ptr [ %i.h, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.f = load double, ptr %.068.i.prol, align 8, !tbaa !621
  %i.g = fadd double %.09.i.prol, %i.f            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.068.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1014

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa122.unr = phi double [ poison, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.prol ]
  %.09.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.prol ]
  %.068.i.unr = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.prol ]
  %i.i = icmp ult i64 %i.c, 56
  br i1 %i.i, label %_ZSt10accumulateIPKddET0_T_S3_S2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi double [ %i.af, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ]
  %.068.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.068.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.j = load double, ptr %.068.i, align 8, !tbaa !621
  %i.k = fadd double %.09.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !621
  %i.n = fadd double %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.068.i, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !621
  %i.q = fadd double %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.068.i, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !621
  %i.t = fadd double %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.068.i, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !621
  %i.w = fadd double %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.068.i, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !621
  %i.z = fadd double %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.068.i, i64 48
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !621
  %i.ac = fadd double %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.068.i, i64 56
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !621
  %i.af = fadd double %i.ac, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.068.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.7, label %_ZSt10accumulateIPKddET0_T_S3_S2_.exit, label %.lr.ph.i, !llvm.loop !1015

_ZSt10accumulateIPKddET0_T_S3_S2_.exit:           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %.lcssa122.unr, %.lr.ph.i.prol.loopexit ], [ %i.af, %.lr.ph.i ] ; 5 uses
  %i.ah = fdiv double %.0.lcssa.i, %1
  %i.ai = tail call double @log(double noundef %i.ah) #33, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !836
  %i.ak = add nsw i32 %4, -1                      ; 2 uses
  %i.al = sext i32 %i.ak to i64                   ; 5 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !621
  %i.ao = load ptr, ptr %0, align 8, !tbaa !826   ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.al
  store double %i.an, ptr %i.ap, align 8, !tbaa !621
  %i.aq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.al
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !621
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !826 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.al
  store double %i.ar, ptr %i.au, align 8, !tbaa !621
  %i.av = icmp sgt i32 %4, 1
  br i1 %i.av, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZSt10accumulateIPKddET0_T_S3_S2_.exit
  %7 = fmul double %i.ai, 4.000000e+00
  %8 = fadd double %7, 2.400000e+01
  %9 = fdiv double %8, %1
  %10 = fdiv double 1.000000e+00, %.0.lcssa.i
  %i.aw = add nsw i32 %4, -2
  %i.ax = zext nneg i32 %i.aw to i64
  %11 = insertelement <2 x double> poison, double %9, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x double> poison, double %10, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = sext i32 %.169 to i64
  %i.ay = add nsw i32 %i.cj, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSt10accumulateIPKddET0_T_S3_S2_.exit
  %i.az = phi i32 [ %i.ay, %._crit_edge.loopexit ], [ 1, %_ZSt10accumulateIPKddET0_T_S3_S2_.exit ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.al, %_ZSt10accumulateIPKddET0_T_S3_S2_.exit ] ; 2 uses
  %.0.lcssa = phi double [ %.1, %._crit_edge.loopexit ], [ 0.000000e+00, %_ZSt10accumulateIPKddET0_T_S3_S2_.exit ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.pre-phi ; 3 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !621 ; 2 uses
  %i.bc = fadd double %.0.lcssa, %i.bb
  store i32 %i.az, ptr %i.aj, align 4, !tbaa !836
  %i.bd = fmul double %.0.lcssa.i, 1.000000e-04   ; 2 uses
  %i.be = fcmp ogt double %i.bd, 1.000000e-03
  %.sroa.speculated = select i1 %i.be, double %i.bd, double 1.000000e-03 ; 2 uses
  %i.bf = fsub double %i.bc, %.0.lcssa.i
  %i.bg = tail call noundef double @llvm.fabs.f64(double %i.bf) ; 2 uses
  %i.bh = fcmp uge double %i.bg, %.sroa.speculated
  br i1 %i.bh, label %bb.e, label %bb.h, !prof !56

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.bi = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cj, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.096 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.1, %bb.d ] ; 4 uses
  %.06895 = phi i32 [ %i.ak, %.lr.ph.preheader ], [ %.169, %bb.d ] ; 3 uses
  %i.bj = sext i32 %.06895 to i64                 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bj ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !621 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !621 ; 2 uses
  %i.bo = fadd double %i.bl, %i.bn                ; 4 uses
  %15 = fadd double %.096, %i.bo
  %16 = insertelement <2 x double> poison, double %15, i64 0
  %17 = insertelement <2 x double> %16, double %.096, i64 1
  %18 = fmul <2 x double> %14, %17                ; 2 uses
  %19 = fsub <2 x double> splat (double 1.000000e+00), %18
  %20 = fmul <2 x double> %18, %19
  %21 = fmul <2 x double> %12, %20                ; 2 uses
  %22 = extractelement <2 x double> %21, i64 0    ; 2 uses
  %23 = extractelement <2 x double> %21, i64 1    ; 2 uses
  %i.bp = fcmp olt double %22, %23
  %.sroa.speculated86 = select i1 %i.bp, double %22, double %23
  %i.bq = fmul double %.0.lcssa.i, %.sroa.speculated86
  %i.br = fcmp ugt double %i.bo, %i.bq
  br i1 %i.br, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store double %i.bo, ptr %i.bk, align 8, !tbaa !621
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !621
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bj ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !621 ; 2 uses
  %i.bw = fsub double %i.bt, %i.bv
  %i.bx = load double, ptr %i.bm, align 8, !tbaa !621
  %i.by = fmul double %i.bw, %i.bx
  %i.bz = fdiv double %i.by, %i.bo
  %i.ca = fadd double %i.bv, %i.bz
  store double %i.ca, ptr %i.bu, align 8, !tbaa !621
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.cb = fadd double %.096, %i.bl
  %i.cc = add nsw i32 %i.bi, 1                    ; 2 uses
  store i32 %i.cc, ptr %i.aj, align 4, !tbaa !836
  %i.cd = add nsw i32 %.06895, -1                 ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ce
  store double %i.bn, ptr %i.cf, align 8, !tbaa !621
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !621
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ce
  store double %i.ch, ptr %i.ci, align 8, !tbaa !621
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cj = phi i32 [ %i.bi, %bb.b ], [ %i.cc, %bb.c ] ; 2 uses
  %.169 = phi i32 [ %.06895, %bb.b ], [ %i.cd, %bb.c ] ; 2 uses
  %.1 = phi double [ %.096, %bb.b ], [ %i.cb, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ck = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ck, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1016

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !1017
  store double %i.bg, ptr %5, align 16, !tbaa !26, !alias.scope !1020, !noalias !1017
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %.sroa.speculated, ptr %i.cl, align 16, !tbaa !26, !alias.scope !1020, !noalias !1017
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.46, i64 11, i64 170, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !1017
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE9mergeImplILb1EEEvdPKdS7_iE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.46) #38
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !26
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  resume { ptr, i32 } %i.cm

bb.h:                                             ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !787
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.ba to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = icmp sgt i64 %i.cw, 8
  br i1 %i.cx, label %bb.i, label %bb.j, !prof !235

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull align 8 %i.ba, i64 %i.cw, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %bb.h
  %i.cy = icmp eq i64 %i.cw, 8
  br i1 %i.cy, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.j
  store double %i.bb, ptr %i.ao, align 8, !tbaa !621
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.cz = load ptr, ptr %i.as, align 8, !tbaa !787 ; 3 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %.pre-phi ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !787
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp sgt i64 %i.df, 8
  br i1 %i.dg, label %bb.l, label %bb.m, !prof !235

bb.l:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cz, ptr align 8 %i.da, i64 %i.df, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit72

bb.m:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit
  %i.dh = icmp eq i64 %i.df, 8
  br i1 %i.dh, label %bb.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit72

bb.n:                                             ; preds = %bb.m
  %i.di = load double, ptr %i.da, align 8, !tbaa !621
  store double %i.di, ptr %i.cz, align 8, !tbaa !621
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit72

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit72: ; preds = %bb.l, %bb.m, %bb.n
  %i.dj = load i32, ptr %i.aj, align 4, !tbaa !836
  %i.dk = sext i32 %i.dj to i64                   ; 7 uses
  %i.dl = load ptr, ptr %i.cs, align 8, !tbaa !848 ; 2 uses
  %i.dm = load ptr, ptr %0, align 8, !tbaa !826   ; 2 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3                 ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.dk
  br i1 %i.dr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit72
  %i.ds = sub nuw nsw i64 %i.dk, %i.dq
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ds)
  %.pre99 = load i32, ptr %i.aj, align 4, !tbaa !836
  %.pre102 = sext i32 %.pre99 to i64
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.p:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit72
  %i.dt = icmp ugt i64 %i.dq, %i.dk
  br i1 %i.dt, label %bb.q, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.q:                                             ; preds = %bb.p
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk ; 2 uses
  %.not.i.i = icmp eq ptr %i.dl, %i.du
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.q
  store ptr %i.du, ptr %i.cs, align 8, !tbaa !848
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.o, %bb.p, %bb.q, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi103 = phi i64 [ %.pre102, %bb.o ], [ %i.dk, %bb.p ], [ %i.dk, %bb.q ], [ %i.dk, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.dv = load ptr, ptr %i.db, align 8, !tbaa !848 ; 4 uses
  %i.dw = load ptr, ptr %i.as, align 8, !tbaa !826 ; 5 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3                 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %.pre-phi103
  br i1 %i.eb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.ec = sub nuw nsw i64 %.pre-phi103, %i.ea
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef %i.ec)
  %.pre100 = load ptr, ptr %i.as, align 8, !tbaa !787
  %.pre101 = load ptr, ptr %i.db, align 8, !tbaa !787
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit75

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.ed = icmp ugt i64 %i.ea, %.pre-phi103
  br i1 %i.ed, label %bb.t, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit75

bb.t:                                             ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.pre-phi103 ; 3 uses
  %.not.i.i73 = icmp eq ptr %i.dv, %i.ee
  br i1 %.not.i.i73, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit75, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i74

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i74:      ; preds = %bb.t
  store ptr %i.ee, ptr %i.db, align 8, !tbaa !848
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit75

_ZNSt6vectorIdSaIdEE6resizeEm.exit75:             ; preds = %bb.r, %bb.s, %bb.t, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i74
  %i.ef = phi ptr [ %.pre101, %bb.r ], [ %i.dv, %bb.s ], [ %i.dv, %bb.t ], [ %i.ee, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i74 ]
  %i.eg = phi ptr [ %.pre100, %bb.r ], [ %i.dw, %bb.s ], [ %i.dw, %bb.t ], [ %i.dw, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i74 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ei = load double, ptr %i.eg, align 8, !tbaa !621 ; 2 uses
  %i.ej = load double, ptr %i.eh, align 8, !tbaa !621 ; 2 uses
  %i.ek = fcmp olt double %i.ei, %i.ej
  %i.el = select i1 %i.ek, double %i.ei, double %i.ej
  store double %i.el, ptr %i.eh, align 8, !tbaa !856
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.ef, i64 -8
  %i.eo = load double, ptr %i.em, align 8, !tbaa !621 ; 2 uses
  %i.ep = load double, ptr %i.en, align 8, !tbaa !621 ; 2 uses
  %i.eq = fcmp olt double %i.eo, %i.ep
  %i.er = select i1 %i.eq, double %i.ep, double %i.eo
  store double %i.er, ptr %i.em, align 8, !tbaa !857
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions7TDigestISaIdEE9mergeImplILb0EEEvdPKdS7_i(ptr noundef nonnull align 8 dereferenceable(81) %0, double noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.519", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = sext i32 %4 to i64
  %.idx = shl nsw i64 %i.a, 3                     ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 %.idx
  %.not7.i = icmp eq i32 %4, 0
  br i1 %.not7.i, label %_ZSt10accumulateIPKddET0_T_S3_S2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = add nsw i64 %.idx, -8                    ; 2 uses
  %i.d = lshr exact i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi double [ %i.g, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.068.i.prol = phi ptr [ %i.h, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.f = load double, ptr %.068.i.prol, align 8, !tbaa !621
  %i.g = fadd double %.09.i.prol, %i.f            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.068.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1023

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa100.unr = phi double [ poison, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.prol ]
  %.09.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.prol ]
  %.068.i.unr = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.prol ]
  %i.i = icmp ult i64 %i.c, 56
  br i1 %i.i, label %_ZSt10accumulateIPKddET0_T_S3_S2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi double [ %i.af, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ]
  %.068.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.068.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.j = load double, ptr %.068.i, align 8, !tbaa !621
  %i.k = fadd double %.09.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !621
  %i.n = fadd double %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.068.i, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !621
  %i.q = fadd double %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.068.i, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !621
  %i.t = fadd double %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.068.i, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !621
  %i.w = fadd double %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.068.i, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !621
  %i.z = fadd double %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.068.i, i64 48
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !621
  %i.ac = fadd double %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.068.i, i64 56
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !621
  %i.af = fadd double %i.ac, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.068.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.7, label %_ZSt10accumulateIPKddET0_T_S3_S2_.exit, label %.lr.ph.i, !llvm.loop !1015

_ZSt10accumulateIPKddET0_T_S3_S2_.exit:           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %.lcssa100.unr, %.lr.ph.i.prol.loopexit ], [ %i.af, %.lr.ph.i ] ; 5 uses
  %i.ah = fdiv double %.0.lcssa.i, %1
  %i.ai = tail call double @log(double noundef %i.ah) #33, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !836
  %i.ak = load double, ptr %2, align 8, !tbaa !621
  %i.al = load ptr, ptr %0, align 8, !tbaa !826   ; 6 uses
  store double %i.ak, ptr %i.al, align 8, !tbaa !621
  %i.am = load double, ptr %3, align 8, !tbaa !621
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !826 ; 6 uses
  store double %i.am, ptr %i.ao, align 8, !tbaa !621
  %i.ap = icmp sgt i32 %4, 1
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZSt10accumulateIPKddET0_T_S3_S2_.exit
  %7 = fmul double %i.ai, 4.000000e+00
  %8 = fadd double %7, 2.400000e+01
  %9 = fdiv double %8, %1
  %10 = fdiv double 1.000000e+00, %.0.lcssa.i
  %wide.trip.count = zext nneg i32 %4 to i64
  %11 = insertelement <2 x double> poison, double %9, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x double> poison, double %10, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.aq = sext i32 %.154 to i64
  %i.ar = add nsw i32 %i.cc, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSt10accumulateIPKddET0_T_S3_S2_.exit
  %i.as = phi i32 [ 1, %_ZSt10accumulateIPKddET0_T_S3_S2_.exit ], [ %i.ar, %._crit_edge.loopexit ] ; 2 uses
  %.053.lcssa = phi i64 [ 0, %_ZSt10accumulateIPKddET0_T_S3_S2_.exit ], [ %i.aq, %._crit_edge.loopexit ]
  %.0.lcssa = phi double [ 0.000000e+00, %_ZSt10accumulateIPKddET0_T_S3_S2_.exit ], [ %.1, %._crit_edge.loopexit ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.053.lcssa
  %i.au = load double, ptr %i.at, align 8, !tbaa !621
  %i.av = fadd double %.0.lcssa, %i.au
  store i32 %i.as, ptr %i.aj, align 4, !tbaa !836
  %i.aw = fmul double %.0.lcssa.i, 1.000000e-04   ; 2 uses
  %i.ax = fcmp ogt double %i.aw, 1.000000e-03
  %.sroa.speculated = select i1 %i.ax, double %i.aw, double 1.000000e-03 ; 2 uses
  %i.ay = fsub double %i.av, %.0.lcssa.i
  %i.az = tail call noundef double @llvm.fabs.f64(double %i.ay) ; 2 uses
  %i.ba = fcmp uge double %i.az, %.sroa.speculated
  br i1 %i.ba, label %bb.e, label %bb.h, !prof !56

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.bb = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cc, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.078 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.1, %bb.d ] ; 4 uses
  %.05377 = phi i32 [ 0, %.lr.ph.preheader ], [ %.154, %bb.d ] ; 3 uses
  %i.bc = sext i32 %.05377 to i64                 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bc ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !621 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !621 ; 2 uses
  %i.bh = fadd double %i.be, %i.bg                ; 4 uses
  %15 = fadd double %.078, %i.bh
  %16 = insertelement <2 x double> poison, double %15, i64 0
  %17 = insertelement <2 x double> %16, double %.078, i64 1
  %18 = fmul <2 x double> %14, %17                ; 2 uses
  %19 = fsub <2 x double> splat (double 1.000000e+00), %18
  %20 = fmul <2 x double> %18, %19
  %21 = fmul <2 x double> %12, %20                ; 2 uses
  %22 = extractelement <2 x double> %21, i64 0    ; 2 uses
  %23 = extractelement <2 x double> %21, i64 1    ; 2 uses
  %i.bi = fcmp olt double %22, %23
  %.sroa.speculated68 = select i1 %i.bi, double %22, double %23
  %i.bj = fmul double %.0.lcssa.i, %.sroa.speculated68
  %i.bk = fcmp ugt double %i.bh, %i.bj
  br i1 %i.bk, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store double %i.bh, ptr %i.bd, align 8, !tbaa !621
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !621
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bc ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !621 ; 2 uses
  %i.bp = fsub double %i.bm, %i.bo
  %i.bq = load double, ptr %i.bf, align 8, !tbaa !621
  %i.br = fmul double %i.bp, %i.bq
  %i.bs = fdiv double %i.br, %i.bh
  %i.bt = fadd double %i.bo, %i.bs
  store double %i.bt, ptr %i.bn, align 8, !tbaa !621
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.bu = fadd double %.078, %i.be
  %i.bv = add nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bv, ptr %i.aj, align 4, !tbaa !836
  %i.bw = add nsw i32 %.05377, 1                  ; 2 uses
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bx
  store double %i.bg, ptr %i.by, align 8, !tbaa !621
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !621
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bx
  store double %i.ca, ptr %i.cb, align 8, !tbaa !621
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cc = phi i32 [ %i.bb, %bb.b ], [ %i.bv, %bb.c ] ; 2 uses
  %.154 = phi i32 [ %.05377, %bb.b ], [ %i.bw, %bb.c ] ; 2 uses
  %.1 = phi double [ %.078, %bb.b ], [ %i.bu, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1024

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !1025
  store double %i.az, ptr %5, align 16, !tbaa !26, !alias.scope !1028, !noalias !1025
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %.sroa.speculated, ptr %i.cd, align 16, !tbaa !26, !alias.scope !1028, !noalias !1025
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.46, i64 11, i64 170, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !1025
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions7TDigestISaIdEE9mergeImplILb0EEEvdPKdS7_iE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.46) #38
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  resume { ptr, i32 } %i.ce

bb.h:                                             ; preds = %._crit_edge
  %i.ck = sext i32 %i.as to i64                   ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !848 ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.al to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 3                 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %i.ck
  br i1 %i.cr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cs = sub nuw nsw i64 %i.ck, %i.cq
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.cs)
  %.pre = load i32, ptr %i.aj, align 4, !tbaa !836
  %.pre81 = load ptr, ptr %i.an, align 8, !tbaa !826
  %.pre84 = sext i32 %.pre to i64
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.j:                                             ; preds = %bb.h
  %i.ct = icmp ugt i64 %i.cq, %i.ck
  br i1 %i.ct, label %bb.k, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ck ; 2 uses
  %.not.i.i = icmp eq ptr %i.cm, %i.cu
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !848
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.i, %bb.j, %bb.k, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre84, %bb.i ], [ %i.ck, %bb.j ], [ %i.ck, %bb.k ], [ %i.ck, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.cv = phi ptr [ %.pre81, %bb.i ], [ %i.ao, %bb.j ], [ %i.ao, %bb.k ], [ %i.ao, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !848 ; 4 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3                 ; 3 uses
  %i.dc = icmp ult i64 %i.db, %.pre-phi
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.dd = sub nuw nsw i64 %.pre-phi, %i.db
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.dd)
  %.pre82 = load ptr, ptr %i.an, align 8, !tbaa !787
  %.pre83 = load ptr, ptr %i.cw, align 8, !tbaa !787
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit59

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.de = icmp ugt i64 %i.db, %.pre-phi
  br i1 %i.de, label %bb.n, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit59

bb.n:                                             ; preds = %bb.m
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.pre-phi ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.cx, %i.df
  br i1 %.not.i.i57, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit59, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i58

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i58:      ; preds = %bb.n
  store ptr %i.df, ptr %i.cw, align 8, !tbaa !848
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit59

_ZNSt6vectorIdSaIdEE6resizeEm.exit59:             ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i58
  %i.dg = phi ptr [ %.pre83, %bb.l ], [ %i.cx, %bb.m ], [ %i.cx, %bb.n ], [ %i.df, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i58 ]
  %i.dh = phi ptr [ %.pre82, %bb.l ], [ %i.cv, %bb.m ], [ %i.cv, %bb.n ], [ %i.cv, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i58 ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dj = load double, ptr %i.dh, align 8, !tbaa !621 ; 2 uses
  %i.dk = load double, ptr %i.di, align 8, !tbaa !621 ; 2 uses
  %i.dl = fcmp olt double %i.dj, %i.dk
  %i.dm = select i1 %i.dl, double %i.dj, double %i.dk
  store double %i.dm, ptr %i.di, align 8, !tbaa !856
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dg, i64 -8
  %i.dp = load double, ptr %i.dn, align 8, !tbaa !621 ; 2 uses
  %i.dq = load double, ptr %i.do, align 8, !tbaa !621 ; 2 uses
  %i.dr = fcmp olt double %i.dp, %i.dq
  %i.ds = select i1 %i.dr, double %i.dq, double %i.dp
  store double %i.ds, ptr %i.dn, align 8, !tbaa !857
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23ValueAtQuantileFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_14SimpleTDigestTIdEELb0EEEdEEEJSH_dEEEE7iterateIJNS3_20ConstantVectorReaderISH_EENSM_IdEEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.506) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.532, align 8            ; 6 uses
  %6 = alloca %class.anon.531, align 8            ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23ValueAtQuantileFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_14SimpleTDigestTIdEELb0EEEdEEEJSI_dEEEE7iterateIJNS4_20ConstantVectorReaderISI_EENSN_IdEEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_EUlimE_ZNS3_IS13_EEvS15_iibSV_EUliE_EEviiSV_S12_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
end_hunk_0
