Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9528
inline.NumDeleted: 2666
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 521
loop-unroll.NumUnrolled: 524
begin_hunk_0_@_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimi:bb.a
  br label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.x ], [ %i.cq, %bb.w ] ; 2 uses
  %i.cs = load ptr, ptr %8, align 8, !tbaa !299   ; 3 uses
  %.not.i.i.i93 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIdSaIdEED2Ev.exit94, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !301
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #37
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit94

_ZNSt6vectorIdSaIdEED2Ev.exit94:                  ; preds = %bb.z, %bb.y, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.v ], [ %.pn, %bb.y ], [ %.pn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.aj

bb.aa:                                            ; preds = %._crit_edge121
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store double +inf, ptr %i.aw, align 8, !tbaa !79
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.cz, ptr %i.az, align 8, !tbaa !300
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.ac:                                            ; preds = %bb.aa
  %i.da = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.da, label %bb.ad, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #39
          to label %.noexc95 unwind label %bb.ag

.noexc95:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.bd
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #38
          to label %.noexc96 unwind label %bb.ag  ; 5 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.bc ; 2 uses
  store double +inf, ptr %i.dh, align 8, !tbaa !79
  %i.di = icmp sgt i64 %i.bc, 0
  br i1 %i.di, label %bb.ae, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.ae:                                            ; preds = %.noexc96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr align 8 %i.ax, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ae, %.noexc96
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.dk = ptrtoint ptr %i.ay to i64
  %i.dl = sub i64 %i.dk, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.dl) #37
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dg, ptr %0, align 8, !tbaa !299
  store ptr %i.dj, ptr %i.az, align 8, !tbaa !300
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.dm, ptr %i.cy, align 8, !tbaa !301
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.ag:                                            ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i, %bb.ad
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.ab, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %_ZNSt6vectorIdSaIdEED2Ev.exit92
  %i.do = phi ptr [ %i.ax, %bb.ab ], [ %i.dg, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.pre135, %_ZNSt6vectorIdSaIdEED2Ev.exit92 ]
  %i.dp = phi ptr [ %i.cz, %bb.ab ], [ %i.dj, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.pre, %_ZNSt6vectorIdSaIdEED2Ev.exit92 ]
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 3
  %i.du = sext i32 %4 to i64
  %.not84 = icmp ugt i64 %i.dt, %i.du
  br i1 %.not84, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 301)
          to label %bb.al unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit94, %bb.ag, %bb.ai, %bb.j
  %.pn85.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.dv, %bb.ai ], [ %.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit94 ], [ %i.dn, %bb.ag ]
  %i.dw = load ptr, ptr %0, align 8, !tbaa !299   ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIdSaIdEED2Ev.exit98, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !301
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #37
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit98

_ZNSt6vectorIdSaIdEED2Ev.exit98:                  ; preds = %bb.aj, %bb.ak
  resume { ptr, i32 } %.pn85.pn

bb.al:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, %bb.ah
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimiRKSt6vectorIdSaIdEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.130") align 8 initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %7, align 8, !tbaa !317
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !317
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8LightGBM23FindBinWithZeroAsOneBinEPKdPKiiimi(ptr dead_on_unwind writable sret(%"class.std::vector.130") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN8LightGBM24FindBinWithPredefinedBinEPKdPKiiimiRKSt6vectorIdSaIdEE(ptr dead_on_unwind writable sret(%"class.std::vector.130") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM9BinMapper7FindBinEPdimiiibNS_7BinTypeEbbRKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i32 noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %11) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::vector.4", align 8    ; 27 uses
  %13 = alloca %"class.std::vector.130", align 16 ; 9 uses
  %14 = alloca %"class.std::vector.130", align 16 ; 9 uses
  %15 = alloca %"class.std::vector.130", align 16 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %2, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0134731.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1135.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1296 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1296)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.e = load double, ptr %i.d, align 8, !tbaa !79 ; 2 uses
  %i.f = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.f, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.g = add nsw i32 %.0134731.epil.init, 1
  %i.h = sext i32 %.0134731.epil.init to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h
  store double %i.e, ptr %i.i, align 8, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.lr.ph.epil.preheader, %bb.a
  %.0134.lcssa = phi i32 [ 0, %bb.a ], [ %.1135.1, %._crit_edge.loopexit.unr-lcssa ], [ %.0134731.epil.init, %.lr.ph.epil.preheader ], [ %i.g, %bb.b ] ; 9 uses
  br i1 %9, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %.0134731 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1135.1, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.k = load double, ptr %i.j, align 8, !tbaa !79 ; 2 uses
  %i.l = fcmp uno double %i.k, 0.000000e+00
  br i1 %i.l, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = add nsw i32 %.0134731, 1
  %i.n = sext i32 %.0134731 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %1, i64 %i.n
  store double %i.k, ptr %i.o, align 8, !tbaa !79
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %.1135 = phi i32 [ %.0134731, %.lr.ph ], [ %i.m, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !79 ; 2 uses
  %i.s = fcmp uno double %i.r, 0.000000e+00
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.t = add nsw i32 %.1135, 1
  %i.u = sext i32 %.1135 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u
  store double %i.r, ptr %i.v, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %.1135.1 = phi i32 [ %.1135, %.lr.ph.1 ], [ %i.t, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1554

bb.f:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !319
  br label %bb.l

bb.g:                                             ; preds = %._crit_edge
  br i1 %10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.x, align 4, !tbaa !319
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %.0134.lcssa, %2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.z, align 4, !tbaa !319
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 2, ptr %i.z, align 4, !tbaa !319
  %i.aa = sub nsw i32 %2, %.0134.lcssa
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.f
  %.0136 = phi i32 [ 0, %bb.h ], [ 0, %bb.j ], [ %i.aa, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 %8, ptr %i.ab, align 8, !tbaa !295
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !1583
  %i.ad = sext i32 %.0134.lcssa to i64            ; 2 uses
  %i.ae = sext i32 %.0136 to i64                  ; 3 uses
  %16 = add nsw i64 %i.ad, %i.ae
  %17 = sub i64 %3, %16
  %18 = trunc i64 %17 to i32                      ; 7 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ad
  invoke void @_ZSt13__stable_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %1, ptr noundef %i.af)
          to label %_ZSt11stable_sortIPdEvT_S1_.exit unwind label %bb.n

_ZSt11stable_sortIPdEvT_S1_.exit:                 ; preds = %bb.l
  %i.ag = icmp eq i32 %.0134.lcssa, 0
  br i1 %i.ag, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZSt11stable_sortIPdEvT_S1_.exit
  %i.ah = load double, ptr %1, align 8, !tbaa !79
  %i.ai = fcmp ogt double %i.ah, 0.000000e+00
  %i.aj = icmp sgt i32 %18, 0
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i, label %.thread

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m, %_ZSt11stable_sortIPdEvT_S1_.exit
  %i.ak = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38 ; 5 uses
  store double 0.000000e+00, ptr %i.ak, align 8, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #38
          to label %bb.o unwind label %bb.n       ; 4 uses

bb.n:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i219, %bb.bc, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %bb.p, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i, %bb.l
  %.sroa.0458.0 = phi ptr [ null, %bb.l ], [ %.sroa.0458.1513535, %bb.p ], [ %.sroa.0458.13, %bb.bc ], [ %.sroa.0458.13, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i219 ], [ %.sroa.0458.1513535, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i ], [ %i.ak, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i ]
  %.sroa.43.0 = phi ptr [ null, %bb.l ], [ %.sroa.24.0514534, %bb.p ], [ %.sroa.43.13, %bb.bc ], [ %.sroa.43.13, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i219 ], [ %.sroa.24.0514534, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i ]
  %.sroa.0428.0 = phi ptr [ null, %bb.l ], [ %.sroa.0428.1516531, %bb.p ], [ %.sroa.0428.3.lcssa.ph, %bb.bc ], [ %.sroa.0428.3.lcssa.ph, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i219 ], [ %.sroa.0428.1516531, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i ]
  %.sroa.39.0 = phi ptr [ null, %bb.l ], [ %.sroa.23.0517530, %bb.p ], [ %.sroa.23.2.lcssa.ph, %bb.bc ], [ %.sroa.23.2.lcssa.ph, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i219 ], [ %.sroa.23.0517530, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i ]
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.o:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  store i32 %18, ptr %i.am, align 4, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ap = icmp sgt i32 %.0134.lcssa, 0
  br i1 %i.ap, label %.thread519, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit227

.thread:                                          ; preds = %bb.m
  %i.aq = icmp sgt i32 %.0134.lcssa, 0
  tail call void @llvm.assume(i1 %i.aq)
  br label %.thread519

.thread519:                                       ; preds = %.thread, %bb.o
  %.sroa.0458.1513535 = phi ptr [ null, %.thread ], [ %i.ak, %bb.o ] ; 6 uses
  %.sroa.24.0514534 = phi ptr [ null, %.thread ], [ %i.al, %bb.o ] ; 3 uses
  %.sroa.0428.1516531 = phi ptr [ null, %.thread ], [ %i.am, %bb.o ] ; 7 uses
  %.sroa.23.0517530 = phi ptr [ null, %.thread ], [ %i.ao, %bb.o ] ; 4 uses
  %i.ar = ptrtoint ptr %.sroa.24.0514534 to i64
  %i.as = ptrtoint ptr %.sroa.0458.1513535 to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.p, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %.thread519
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #39
          to label %.noexc160 unwind label %bb.n

.noexc160:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %.thread519
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i157 = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i157, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i158 = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i158)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #38
          to label %.noexc161 unwind label %bb.n  ; 6 uses

.noexc161:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 2 uses
  %i.bd = load double, ptr %1, align 8, !tbaa !79
  store double %i.bd, ptr %i.bc, align 8, !tbaa !79
  %i.be = icmp sgt i64 %i.at, 0
  br i1 %i.be, label %bb.q, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc161
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %.sroa.0458.1513535, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc161
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %.not.i17.i.i159 = icmp eq ptr %.sroa.0458.1513535, null
  br i1 %.not.i17.i.i159, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0458.1513535, i64 noundef %i.at) #37
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az ; 3 uses
  %i.bh = ptrtoint ptr %.sroa.23.0517530 to i64
  %i.bi = ptrtoint ptr %.sroa.0428.1516531 to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 6 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775804
  br i1 %i.bk, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #39
          to label %.noexc166 unwind label %bb.w

.noexc166:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.bl = ashr exact i64 %i.bj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i163 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i.i163, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 2305843009213693951)
  %i.bp = select i1 %i.bn, i64 2305843009213693951, i64 %i.bo ; 3 uses
  %.not.i.i.i.i164 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i164)
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #38
          to label %.noexc167 unwind label %bb.w  ; 5 uses

.noexc167:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  store i32 1, ptr %i.bs, align 4, !tbaa !50
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.u:                                             ; preds = %.noexc167
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %.sroa.0428.1516531, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.u, %.noexc167
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %.not.i17.i.i.i165 = icmp eq ptr %.sroa.0428.1516531, null
  br i1 %.not.i17.i.i.i165, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0428.1516531, i64 noundef %i.bj) #37
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.w:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.t
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i, %bb.v
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp ; 2 uses
  %i.bx = icmp samesign ugt i32 %.0134.lcssa, 1
  br i1 %i.bx, label %.lr.ph740.preheader, label %.loopexit1011

.lr.ph740.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %wide.trip.count865 = zext nneg i32 %.0134.lcssa to i64
  br label %.lr.ph740

.lr.ph740:                                        ; preds = %.lr.ph740.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207
  %indvars.iv862 = phi i64 [ 1, %.lr.ph740.preheader ], [ %indvars.iv.next863, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 2 uses
  %.sroa.39.3738 = phi ptr [ %i.bw, %.lr.ph740.preheader ], [ %.sroa.39.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 9 uses
  %.sroa.23.2737 = phi ptr [ %i.bu, %.lr.ph740.preheader ], [ %.sroa.23.4, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 6 uses
  %.sroa.0428.3736 = phi ptr [ %i.br, %.lr.ph740.preheader ], [ %.sroa.0428.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 11 uses
  %.sroa.43.3735 = phi ptr [ %i.bg, %.lr.ph740.preheader ], [ %.sroa.43.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 7 uses
  %.sroa.24.2734 = phi ptr [ %i.bf, %.lr.ph740.preheader ], [ %.sroa.24.4, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 6 uses
  %.sroa.0458.3733 = phi ptr [ %i.bb, %.lr.ph740.preheader ], [ %.sroa.0458.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit207 ] ; 9 uses
  %i.by = getelementptr [8 x i8], ptr %1, i64 %indvars.iv862 ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !79 ; 2 uses
  %i.cb = load double, ptr %i.by, align 8, !tbaa !79 ; 3 uses
  %i.cc = tail call noundef double @nextafter(double noundef %i.ca, double noundef +inf) #19
  %i.cd = fcmp ugt double %i.cb, %i.cc
  br i1 %i.cd, label %bb.x, label %bb.at

bb.x:                                             ; preds = %.lr.ph740
  %i.ce = fcmp olt double %i.ca, 0.000000e+00
  %i.cf = fcmp ogt double %i.cb, 0.000000e+00
  %or.cond567 = and i1 %i.ce, %i.cf
  br i1 %or.cond567, label %bb.y, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit187

bb.y:                                             ; preds = %bb.x
  %.not.i.i168 = icmp eq ptr %.sroa.24.2734, %.sroa.43.3735
  br i1 %.not.i.i168, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store double 0.000000e+00, ptr %.sroa.24.2734, align 8, !tbaa !79
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit177

bb.aa:                                            ; preds = %bb.y
  %i.cg = ptrtoint ptr %.sroa.43.3735 to i64
  %i.ch = ptrtoint ptr %.sroa.0458.3733 to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 6 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %bb.ab, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i169

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #39
          to label %.noexc175 unwind label %.loopexit.split-lp587

.noexc175:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i169: ; preds = %bb.aa
  %i.ck = ashr exact i64 %i.ci, 3                 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8LightGBM9BinMapper7FindBinEPdimiiibNS_7BinTypeEbbRKSt6vectorIdSaIdEE:bb.a
  %i.xd = select i1 %i.xb, i64 2305843009213693951, i64 %i.xc ; 3 uses
  %.not.i.i.i315 = icmp ne i64 %i.xd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i315)
  %i.xe = shl nuw nsw i64 %i.xd, 2
  %i.xf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xe) #38
          to label %.noexc320 unwind label %.loopexit576 ; 4 uses

.noexc320:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i313
  %i.xg = getelementptr inbounds i8, ptr %i.xf, i64 %i.wx ; 2 uses
  %i.xh = load i32, ptr %i.wp, align 4, !tbaa !50
  store i32 %i.xh, ptr %i.xg, align 4, !tbaa !50
  %i.xi = icmp sgt i64 %i.wx, 0
  br i1 %i.xi, label %bb.ek, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i316

bb.ek:                                            ; preds = %.noexc320
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.xf, ptr align 4 %i.wu, i64 %i.wx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i316

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i316: ; preds = %bb.ek, %.noexc320
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xg, i64 4
  %.not.i17.i.i317 = icmp eq ptr %i.wu, null
  br i1 %.not.i17.i.i317, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i318, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i316
  %i.xk = load ptr, ptr %i.tt, align 8, !tbaa !234
  %i.xl = ptrtoint ptr %i.xk to i64
  %i.xm = sub i64 %i.xl, %i.ww
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wu, i64 noundef %i.xm) #37
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i318

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i318: ; preds = %bb.el, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i316
  store ptr %i.xf, ptr %i.tj, align 8, !tbaa !75
  store ptr %i.xj, ptr %i.tl, align 8, !tbaa !165
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %i.xd
  store ptr %i.xn, ptr %i.tt, align 8, !tbaa !234
  %.pre = load i32, ptr %i.wp, align 4, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit321

_ZNSt6vectorIiSaIiEE9push_backERKi.exit321:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i318, %bb.ei
  %i.xo = phi i32 [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i318 ], [ %i.ws, %bb.ei ] ; 3 uses
  %i.xp = load i32, ptr %0, align 8, !tbaa !293
  %i.xq = sext i32 %i.xo to i64                   ; 2 uses
  %i.xr = load i64, ptr %i.tg, align 8, !tbaa !297 ; 2 uses
  %i.xs = urem i64 %i.xq, %i.xr                   ; 3 uses
  %i.xt = load ptr, ptr %i.tb, align 8, !tbaa !296
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xt, i64 %i.xs
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !313 ; 2 uses
  %.not.i.i.i.i322 = icmp eq ptr %i.xv, null
  br i1 %.not.i.i.i.i322, label %.loopexit.i.i328, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit321
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !303 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !50
  %i.xz = icmp eq i32 %i.xo, %i.xy
  br i1 %i.xz, label %.loopexit575, label %.lr.ph.i.i.i.i323

bb.en:                                            ; preds = %bb.eo
  %i.ya = icmp eq i32 %i.xo, %i.yd
  br i1 %i.ya, label %.loopexit575, label %.lr.ph.i.i.i.i323, !llvm.loop !17

.lr.ph.i.i.i.i323:                                ; preds = %bb.em, %bb.en
  %.020.i.i.i.i324 = phi ptr [ %i.yb, %bb.en ], [ %i.xw, %bb.em ]
  %i.yb = load ptr, ptr %.020.i.i.i.i324, align 8, !tbaa !303 ; 4 uses
  %.not18.i.i.i.i325 = icmp eq ptr %i.yb, null
  br i1 %.not18.i.i.i.i325, label %.loopexit.i.i328, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i.i.i.i323
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !50 ; 2 uses
  %i.ye = sext i32 %i.yd to i64
  %i.yf = urem i64 %i.ye, %i.xr
  %.not19.i.i.i.i326 = icmp eq i64 %i.yf, %i.xs
  br i1 %.not19.i.i.i.i326, label %bb.en, label %..loopexit_crit_edge21.i.i.i.i327, !llvm.loop !17

..loopexit_crit_edge21.i.i.i.i327:                ; preds = %bb.eo
  br label %.loopexit.i.i328, !llvm.loop !17

.loopexit.i.i328:                                 ; preds = %.lr.ph.i.i.i.i323, %..loopexit_crit_edge21.i.i.i.i327, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit321
  %i.yg = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %.noexc332 unwind label %.loopexit576 ; 5 uses

.noexc332:                                        ; preds = %.loopexit.i.i328
  store ptr null, ptr %i.yg, align 8, !tbaa !303
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.yi = load i32, ptr %i.wp, align 4, !tbaa !50
  store i32 %i.yi, ptr %i.yh, align 8, !tbaa !315
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 12
  store i32 0, ptr %i.yj, align 4, !tbaa !316
  %i.yk = invoke ptr @_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.tb, i64 noundef %i.xs, i64 noundef %i.xq, ptr noundef nonnull %i.yg, i64 noundef 1)
          to label %.loopexit575 unwind label %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329

_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329: ; preds = %.noexc332
  %i.yl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.yg, i64 noundef 16) #37
  br label %.body

.loopexit575:                                     ; preds = %bb.en, %.noexc332, %bb.em
  %.pn.i.i330 = phi ptr [ %i.yk, %.noexc332 ], [ %i.xw, %bb.em ], [ %i.yb, %bb.en ]
  %.1.i.i331 = getelementptr inbounds nuw i8, ptr %.pn.i.i330, i64 12
  store i32 %i.xp, ptr %.1.i.i331, align 4, !tbaa !50
  %i.ym = load i32, ptr %i.wi, align 4, !tbaa !50 ; 2 uses
  %i.yn = load ptr, ptr %i.tr, align 8, !tbaa !165 ; 4 uses
  %i.yo = load ptr, ptr %i.vj, align 8, !tbaa !234
  %.not.i335 = icmp eq ptr %i.yn, %i.yo
  br i1 %.not.i335, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.loopexit575
  store i32 %i.ym, ptr %i.yn, align 4, !tbaa !50
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 4
  store ptr %i.yp, ptr %i.tr, align 8, !tbaa !165
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit344

bb.eq:                                            ; preds = %.loopexit575
  %i.yq = load ptr, ptr %12, align 8, !tbaa !75   ; 4 uses
  %i.yr = ptrtoint ptr %i.yn to i64
  %i.ys = ptrtoint ptr %i.yq to i64               ; 2 uses
  %i.yt = sub i64 %i.yr, %i.ys                    ; 5 uses
  %i.yu = icmp eq i64 %i.yt, 9223372036854775804
  br i1 %i.yu, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i336

.invoke:                                          ; preds = %bb.eq, %bb.ej
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #39
          to label %.cont unwind label %.body.thread

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i336: ; preds = %bb.eq
  %i.yv = ashr exact i64 %i.yt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i337 = tail call i64 @llvm.umax.i64(i64 %i.yv, i64 1)
  %i.yw = add nsw i64 %.sroa.speculated.i.i.i337, %i.yv ; 2 uses
  %i.yx = icmp ult i64 %i.yw, %i.yv
  %i.yy = tail call i64 @llvm.umin.i64(i64 %i.yw, i64 2305843009213693951)
  %i.yz = select i1 %i.yx, i64 2305843009213693951, i64 %i.yy ; 3 uses
  %.not.i.i.i338 = icmp ne i64 %i.yz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i338)
  %i.za = shl nuw nsw i64 %i.yz, 2
  %i.zb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.za) #38
          to label %.noexc343 unwind label %.loopexit576 ; 4 uses

.noexc343:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i336
  %i.zc = getelementptr inbounds i8, ptr %i.zb, i64 %i.yt ; 2 uses
  %i.zd = load i32, ptr %i.wi, align 4, !tbaa !50
  store i32 %i.zd, ptr %i.zc, align 4, !tbaa !50
  %i.ze = icmp sgt i64 %i.yt, 0
  br i1 %i.ze, label %bb.er, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i339

bb.er:                                            ; preds = %.noexc343
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.zb, ptr align 4 %i.yq, i64 %i.yt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i339

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i339: ; preds = %bb.er, %.noexc343
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zc, i64 4
  %.not.i17.i.i340 = icmp eq ptr %i.yq, null
  br i1 %.not.i17.i.i340, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i341, label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i339
  %i.zg = load ptr, ptr %i.vj, align 8, !tbaa !234
  %i.zh = ptrtoint ptr %i.zg to i64
  %i.zi = sub i64 %i.zh, %i.ys
  tail call void @_ZdlPvm(ptr noundef nonnull %i.yq, i64 noundef %i.zi) #37
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i341

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i341: ; preds = %bb.es, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i339
  store ptr %i.zb, ptr %12, align 8, !tbaa !75
  store ptr %i.zf, ptr %i.tr, align 8, !tbaa !165
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.yz
  store ptr %i.zj, ptr %i.vj, align 8, !tbaa !234
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit344

_ZNSt6vectorIiSaIiEE9push_backERKi.exit344:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i341, %bb.ep
  %i.zk = add nsw i32 %i.ym, %.0766               ; 2 uses
  %i.zl = load i32, ptr %0, align 8, !tbaa !293
  %i.zm = add nsw i32 %i.zl, 1                    ; 2 uses
  store i32 %i.zm, ptr %0, align 8, !tbaa !293
  %i.zn = add nuw i64 %.0120765, 1                ; 2 uses
  %exitcond871.not = icmp eq i64 %i.zn, %i.oh
  br i1 %exitcond871.not, label %.critedge5, label %.lr.ph767, !llvm.loop !1580

.loopexit576:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i313, %.loopexit.i.i328, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i336
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.thread:                                     ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.critedge5:                                       ; preds = %.critedge7, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit344, %.lr.ph767, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit311
  %.0120.lcssa = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit311 ], [ %i.oh, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit344 ], [ %.0120765, %.critedge7 ], [ %.0120765, %.lr.ph767 ]
  %.0.lcssa = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit311 ], [ %i.zk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit344 ], [ %.0766, %.critedge7 ], [ %.0766, %.lr.ph767 ]
  %i.zo = icmp eq i64 %.0120.lcssa, %i.oh
  %i.zp = icmp eq i32 %.1137.lcssa, 0
  %or.cond11 = and i1 %i.zo, %i.zp
  %spec.select1088 = select i1 %or.cond11, i32 0, i32 2
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %spec.select1088, ptr %i.zq, align 4, !tbaa !319
  %19 = trunc i64 %3 to i32
  %i.zr = sub i32 %19, %.0.lcssa
  %i.zs = load ptr, ptr %12, align 8, !tbaa !75
  store i32 %i.zr, ptr %i.zs, align 4, !tbaa !50
  br label %bb.et

bb.et:                                            ; preds = %.critedge5, %._crit_edge757
  %.not.i.i.i345 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i345, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.zt = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.zu = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.zv = sub i64 %i.zt, %i.zu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.zv) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.et, %bb.eu
  %.not.i.i.i346 = icmp eq ptr %.sroa.0395.0.lcssa, null
  br i1 %.not.i.i.i346, label %_ZNSt6vectorIiSaIiEED2Ev.exit347thread-pre-split, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.zw = ptrtoint ptr %.sroa.27.0.lcssa to i64
  %i.zx = ptrtoint ptr %.sroa.0395.0.lcssa to i64
  %i.zy = sub i64 %i.zw, %i.zx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0395.0.lcssa, i64 noundef %i.zy) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit347thread-pre-split

.body:                                            ; preds = %.loopexit576, %.loopexit579, %.loopexit.split-lp580, %bb.ee, %bb.eg, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.ef, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329, %.body.i, %bb.dq, %bb.dd
  %.sroa.0.0651 = phi ptr [ %.sroa.0.0.lcssa, %bb.ee ], [ %.sroa.0.0.lcssa, %.body.i ], [ %.sroa.0.0.lcssa, %bb.dd ], [ %.sroa.0.0.lcssa, %bb.dq ], [ %.sroa.0.0751, %.loopexit.split-lp580 ], [ %.sroa.0.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329 ], [ %.sroa.0.0.lcssa, %bb.ef ], [ %.sroa.0.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.0.0.lcssa, %bb.eg ], [ %.sroa.0.0751, %.loopexit579 ], [ %.sroa.0.0.lcssa, %.loopexit576 ] ; 2 uses
  %.sroa.20.0638 = phi ptr [ %.sroa.20.0.lcssa, %bb.ee ], [ %.sroa.20.0.lcssa, %.body.i ], [ %.sroa.20.0.lcssa, %bb.dd ], [ %.sroa.20.0.lcssa, %bb.dq ], [ %.sroa.20.0753, %.loopexit.split-lp580 ], [ %.sroa.20.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329 ], [ %.sroa.20.0.lcssa, %bb.ef ], [ %.sroa.20.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.20.0.lcssa, %bb.eg ], [ %.sroa.20.0753, %.loopexit579 ], [ %.sroa.20.0.lcssa, %.loopexit576 ]
  %.sroa.0395.3 = phi ptr [ %.sroa.0395.0.lcssa, %bb.ee ], [ %.sroa.0395.0.lcssa, %.body.i ], [ %.sroa.0395.0.lcssa, %bb.dd ], [ %.sroa.0395.0.lcssa, %bb.dq ], [ %.sroa.0395.1.ph581, %.loopexit.split-lp580 ], [ %.sroa.0395.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329 ], [ %.sroa.0395.0.lcssa, %bb.ef ], [ %.sroa.0395.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.0395.0.lcssa, %bb.eg ], [ %.sroa.0395.1.ph, %.loopexit579 ], [ %.sroa.0395.0.lcssa, %.loopexit576 ] ; 2 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.0.lcssa, %bb.ee ], [ %.sroa.27.0.lcssa, %.body.i ], [ %.sroa.27.0.lcssa, %bb.dd ], [ %.sroa.27.0.lcssa, %bb.dq ], [ %.sroa.27.1.ph582, %.loopexit.split-lp580 ], [ %.sroa.27.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329 ], [ %.sroa.27.0.lcssa, %bb.ef ], [ %.sroa.27.0.lcssa, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.sroa.27.0.lcssa, %bb.eg ], [ %.sroa.27.1.ph, %.loopexit579 ], [ %.sroa.27.0.lcssa, %.loopexit576 ] ; 2 uses
  %.pn145 = phi { ptr, i32 } [ %i.wm, %bb.ee ], [ %.pn.i, %.body.i ], [ %i.ok, %bb.dd ], [ %.pn.i, %bb.dq ], [ %lpad.loopexit.split-lp584, %.loopexit.split-lp580 ], [ %i.yl, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i329 ], [ %i.wn, %bb.ef ], [ %i.vh, %_ZNSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.wo, %bb.eg ], [ %lpad.loopexit583, %.loopexit579 ], [ %lpad.loopexit, %.loopexit576 ] ; 2 uses
  %.not.i.i.i348 = icmp eq ptr %.sroa.0.0651, null
  br i1 %.not.i.i.i348, label %_ZNSt6vectorIiSaIiEED2Ev.exit349, label %bb.ew

bb.ew:                                            ; preds = %.body.thread, %.body
  %.pn1451000 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.body.thread ], [ %.pn145, %.body ]
  %.sroa.27.3998 = phi ptr [ %.sroa.27.0.lcssa, %.body.thread ], [ %.sroa.27.3, %.body ]
  %.sroa.0395.3996 = phi ptr [ %.sroa.0395.0.lcssa, %.body.thread ], [ %.sroa.0395.3, %.body ]
  %.sroa.20.0638995 = phi ptr [ %.sroa.20.0.lcssa, %.body.thread ], [ %.sroa.20.0638, %.body ]
  %.sroa.0.0651994 = phi ptr [ %.sroa.0.0.lcssa, %.body.thread ], [ %.sroa.0.0651, %.body ] ; 2 uses
  %i.zz = ptrtoint ptr %.sroa.20.0638995 to i64
  %i.aaa = ptrtoint ptr %.sroa.0.0651994 to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0651994, i64 noundef %i.aab) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit349

_ZNSt6vectorIiSaIiEED2Ev.exit349:                 ; preds = %.body, %bb.ew
  %.pn1451001 = phi { ptr, i32 } [ %.pn145, %.body ], [ %.pn1451000, %bb.ew ] ; 2 uses
  %.sroa.27.3999 = phi ptr [ %.sroa.27.3, %.body ], [ %.sroa.27.3998, %bb.ew ]
  %.sroa.0395.3997 = phi ptr [ %.sroa.0395.3, %.body ], [ %.sroa.0395.3996, %bb.ew ] ; 3 uses
  %.not.i.i.i350 = icmp eq ptr %.sroa.0395.3997, null
  br i1 %.not.i.i.i350, label %_ZNSt6vectorIiSaIiEED2Ev.exit351, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit349
  %i.aac = ptrtoint ptr %.sroa.27.3999 to i64
  %i.aad = ptrtoint ptr %.sroa.0395.3997 to i64
  %i.aae = sub i64 %i.aac, %i.aad
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0395.3997, i64 noundef %i.aae) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit351

_ZNSt6vectorIiSaIiEED2Ev.exit347thread-pre-split: ; preds = %bb.ck, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ev
  %.pr550 = load i32, ptr %0, align 8, !tbaa !293
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit347

_ZNSt6vectorIiSaIiEED2Ev.exit347:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit347thread-pre-split, %bb.cj
  %i.aaf = phi i32 [ %.pr550, %_ZNSt6vectorIiSaIiEED2Ev.exit347thread-pre-split ], [ %i.lz, %bb.cj ]
  %i.aag = icmp slt i32 %i.aaf, 2
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.aag, label %.thread1002, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit347
  store i8 0, ptr %i.aah, align 8, !tbaa !294
  br i1 %7, label %bb.ez, label %.loopexit1008

bb.ez:                                            ; preds = %bb.ey
  %20 = trunc i64 %3 to i32                       ; 2 uses
  %i.aai = load i32, ptr %i.ab, align 8, !tbaa !295
  %i.aaj = icmp eq i32 %i.aai, 0
  %i.aak = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !165
  %i.aam = load ptr, ptr %12, align 8, !tbaa !75  ; 3 uses
  %i.aan = ptrtoint ptr %i.aal to i64
  %i.aao = ptrtoint ptr %i.aam to i64
  %i.aap = sub i64 %i.aan, %i.aao
  %i.aaq = ashr exact i64 %i.aap, 2               ; 3 uses
  br i1 %i.aaj, label %.preheader.i, label %bb.fb

.preheader.i:                                     ; preds = %bb.ez
  %i.aar = add nsw i64 %i.aaq, -1                 ; 2 uses
  %.not4151.not.i = icmp eq i64 %i.aar, 0
  br i1 %.not4151.not.i, label %.thread1002, label %.lr.ph54.i

bb.fa:                                            ; preds = %.lr.ph54.i
  %i.aas = add nuw i64 %.02953.i, 1               ; 2 uses
  %exitcond61.not.i = icmp eq i64 %i.aas, %i.aar
  br i1 %exitcond61.not.i, label %.thread1002, label %.lr.ph54.i, !llvm.loop !18

.lr.ph54.i:                                       ; preds = %.preheader.i, %bb.fa
  %.02953.i = phi i64 [ %i.aas, %bb.fa ], [ 0, %.preheader.i ] ; 2 uses
  %.03052.i = phi i32 [ %i.aav, %bb.fa ], [ 0, %.preheader.i ]
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %.02953.i
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !50
  %i.aav = add nsw i32 %i.aau, %.03052.i          ; 3 uses
  %.not39.i = icmp slt i32 %i.aav, %6
  %i.aaw = sub nsw i32 %20, %i.aav
  %.not40.i = icmp slt i32 %i.aaw, %6
  %or.cond.i = select i1 %.not39.i, i1 true, i1 %.not40.i
  br i1 %or.cond.i, label %bb.fa, label %.loopexit1008

bb.fb:                                            ; preds = %bb.ez
  %i.aax = icmp ult i64 %i.aaq, 3
  br i1 %i.aax, label %.preheader45.i, label %.loopexit1008

.preheader45.i:                                   ; preds = %bb.fb
  %i.aay = add nsw i64 %i.aaq, -1                 ; 2 uses
  %.not58.i = icmp eq i64 %i.aay, 0
  br i1 %.not58.i, label %.thread1002, label %.lr.ph.i352

bb.fc:                                            ; preds = %.lr.ph.i352
  %i.aaz = add nuw i64 %.048.i, 1                 ; 2 uses
  %exitcond.not.i354 = icmp eq i64 %i.aaz, %i.aay
  br i1 %exitcond.not.i354, label %.thread1002, label %.lr.ph.i352, !llvm.loop !19

.lr.ph.i352:                                      ; preds = %.preheader45.i, %bb.fc
  %.048.i = phi i64 [ %i.aaz, %bb.fc ], [ 0, %.preheader45.i ] ; 2 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %.048.i
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !50 ; 2 uses
  %.not.i353 = icmp slt i32 %i.abb, %6
  %i.abc = sub nsw i32 %20, %i.abb
  %.not38.i = icmp slt i32 %i.abc, %6
  %or.cond42.i = select i1 %.not.i353, i1 true, i1 %.not38.i
  br i1 %or.cond42.i, label %bb.fc, label %.loopexit1008

.loopexit1008:                                    ; preds = %.lr.ph.i352, %.lr.ph54.i, %bb.fb, %bb.ey
  %i.abd = invoke noundef i32 @_ZNK8LightGBM9BinMapper10ValueToBinEd(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef 0.000000e+00)
          to label %bb.fd unwind label %bb.cl     ; 5 uses

bb.fd:                                            ; preds = %.loopexit1008
  store i32 %i.abd, ptr %i.ac, align 8, !tbaa !1583
  %i.abe = load ptr, ptr %12, align 8, !tbaa !63  ; 9 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !63 ; 2 uses
  %i.abh = icmp eq ptr %i.abe, %i.abg
  br i1 %i.abh, label %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = ptrtoint ptr %i.abe to i64
  %i.abk = sub i64 %i.abi, %i.abj
  %i.abl = ashr exact i64 %i.abk, 2               ; 5 uses
  %i.abm = icmp ugt i64 %i.abl, 1024
  br i1 %i.abm, label %bb.ff, label %.preheader.i355

.preheader.i355:                                  ; preds = %bb.fe
  %i.abn = icmp samesign ugt i64 %i.abl, 1
  br i1 %i.abn, label %.lr.ph.preheader.i, label %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i355
  %.pre.i357 = load i32, ptr %i.abe, align 4, !tbaa !50 ; 3 uses
  %i.abo = add nsw i64 %i.abl, -1                 ; 2 uses
  %min.iters.check1194 = icmp ult i64 %i.abl, 9
  br i1 %min.iters.check1194, label %.lr.ph.i358.preheader, label %vector.ph1195

vector.ph1195:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1196 = and i64 %i.abo, -4                 ; 3 uses
  %i.abp = or disjoint i64 %n.vec1196, 1
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.pre.i357, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1195
  %index1198 = phi i64 [ 0, %vector.ph1195 ], [ %index.next1204, %vector.body1197 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %broadcast.splat, %vector.ph1195 ], [ %i.abx, %vector.body1197 ] ; 2 uses
  %vec.phi1199.a = phi <2 x i32> [ %broadcast.splat, %vector.ph1195 ], [ %i.aby, %vector.body1197 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph1195 ], [ %vec.ind.next, %vector.body1197 ] ; 3 uses
  %vec.phi1200 = phi <2 x i64> [ poison, %vector.ph1195 ], [ %i.abv, %vector.body1197 ]
  %vec.phi1201 = phi <2 x i64> [ poison, %vector.ph1195 ], [ %i.abw, %vector.body1197 ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %index1198 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 4
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 12
  %wide.load1202 = load <2 x i32>, ptr %i.abr, align 4, !tbaa !50 ; 2 uses
  %wide.load1203 = load <2 x i32>, ptr %i.abs, align 4, !tbaa !50 ; 2 uses
  %i.abt = icmp sgt <2 x i32> %wide.load1202, %vec.phi
  %i.abu = icmp sgt <2 x i32> %wide.load1203, %vec.phi1199.a
  %i.abv = select <2 x i1> %i.abt, <2 x i64> %vec.ind, <2 x i64> %vec.phi1200 ; 2 uses
  %i.abw = select <2 x i1> %i.abu, <2 x i64> %step.add, <2 x i64> %vec.phi1201 ; 2 uses
  %i.abx = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %wide.load1202, <2 x i32> %vec.phi) ; 3 uses
  %i.aby = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %wide.load1203, <2 x i32> %vec.phi1199.a) ; 3 uses
  %index.next1204 = add nuw i64 %index1198, 4     ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.abz = icmp eq i64 %index.next1204, %n.vec1196
  br i1 %i.abz, label %middle.block1205, label %vector.body1197, !llvm.loop !1581

middle.block1205:                                 ; preds = %vector.body1197
  %rdx.minmax = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.abx, <2 x i32> %i.aby)
  %i.aca = call i32 @llvm.vector.reduce.smax.v2i32(<2 x i32> %rdx.minmax) ; 3 uses
  %broadcast.splatinsert1206 = insertelement <2 x i32> poison, i32 %i.aca, i64 0
  %broadcast.splat1207 = shufflevector <2 x i32> %broadcast.splatinsert1206, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.acb = icmp eq <2 x i32> %i.abx, %broadcast.splat1207
  %i.acc = icmp eq <2 x i32> %i.aby, %broadcast.splat1207
  %i.acd = select <2 x i1> %i.acc, <2 x i64> %i.abw, <2 x i64> splat (i64 -1) ; 2 uses
  %i.ace = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.abv, <2 x i64> %i.acd)
  %rdx.minmax1208 = select <2 x i1> %i.acb, <2 x i64> %i.ace, <2 x i64> %i.acd
  %i.acf = call i64 @llvm.vector.reduce.umin.v2i64(<2 x i64> %rdx.minmax1208)
  %i.acg = add i64 %i.acf, 1
  %i.ach = icmp eq i32 %i.aca, %.pre.i357
  %i.aci = select i1 %i.ach, i64 0, i64 %i.acg    ; 2 uses
  %cmp.n1209 = icmp eq i64 %i.abo, %n.vec1196
  br i1 %cmp.n1209, label %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i358.preheader

.lr.ph.i358.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block1205
  %.ph = phi i32 [ %.pre.i357, %.lr.ph.preheader.i ], [ %i.aca, %middle.block1205 ]
  %.015.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.abp, %middle.block1205 ]
  %.01214.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.aci, %middle.block1205 ]
  br label %.lr.ph.i358

bb.ff:                                            ; preds = %bb.fe
  %i.acj = invoke noundef i64 @_ZN8LightGBM9ArrayArgsIiE8ArgMaxMTERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge unwind label %bb.cl

._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge: ; preds = %bb.ff
  %.pre887.a = load ptr, ptr %12, align 8, !tbaa !75
  %.pre888 = load i32, ptr %i.ac, align 8, !tbaa !1583
  br label %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit

.lr.ph.i358:                                      ; preds = %.lr.ph.i358.preheader, %.lr.ph.i358
  %i.ack = phi i32 [ %i.acp, %.lr.ph.i358 ], [ %.ph, %.lr.ph.i358.preheader ] ; 2 uses
  %.015.i = phi i64 [ %i.aco, %.lr.ph.i358 ], [ %.015.i.ph, %.lr.ph.i358.preheader ] ; 3 uses
  %.01214.i = phi i64 [ %spec.select.i, %.lr.ph.i358 ], [ %.01214.i.ph, %.lr.ph.i358.preheader ]
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %.015.i
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !50 ; 2 uses
  %i.acn = icmp sgt i32 %i.acm, %i.ack
  %spec.select.i = select i1 %i.acn, i64 %.015.i, i64 %.01214.i ; 2 uses
  %i.aco = add nuw nsw i64 %.015.i, 1             ; 2 uses
  %exitcond.not.i359 = icmp eq i64 %i.aco, %i.abl
  %i.acp = call i32 @llvm.smax.i32(i32 %i.acm, i32 %i.ack)
  br i1 %exitcond.not.i359, label %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i358, !llvm.loop !1582

_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i358, %middle.block1205, %._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge, %.preheader.i355, %bb.fd
  %i.acq = phi i32 [ %i.abd, %bb.fd ], [ %.pre888, %._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge ], [ %i.abd, %.preheader.i355 ], [ %i.abd, %middle.block1205 ], [ %i.abd, %.lr.ph.i358 ] ; 3 uses
  %i.acr = phi ptr [ %i.abe, %bb.fd ], [ %.pre887.a, %._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge ], [ %i.abe, %.preheader.i355 ], [ %i.abe, %middle.block1205 ], [ %i.abe, %.lr.ph.i358 ] ; 3 uses
  %.013.i = phi i64 [ 0, %bb.fd ], [ %i.acj, %._ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit_crit_edge ], [ 0, %.preheader.i355 ], [ %i.aci, %middle.block1205 ], [ %spec.select.i, %.lr.ph.i358 ] ; 2 uses
  %i.acs = trunc i64 %.013.i to i32               ; 3 uses
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  store i32 %i.acs, ptr %i.act, align 4, !tbaa !1595
  %i.acu = and i64 %.013.i, 4294967295
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %i.acu
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !50
  %i.acx = sitofp i32 %i.acw to double
  %i.acy = uitofp i64 %3 to double                ; 2 uses
  %i.acz = fdiv double %i.acx, %i.acy
  %i.ada = icmp ne i32 %i.acq, %i.acs
  %i.adb = fcmp olt double %i.acz, f0x3FE6666666666666
  %or.cond15 = select i1 %i.ada, i1 %i.adb, i1 false
  br i1 %or.cond15, label %bb.fg, label %.thread1006

bb.fg:                                            ; preds = %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit
  store i32 %i.acq, ptr %i.act, align 4, !tbaa !1595
  br label %.thread1006

.thread1006:                                      ; preds = %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit, %bb.fg
  %i.adc = phi i32 [ %i.acq, %bb.fg ], [ %i.acs, %_ZN8LightGBM9ArrayArgsIiE6ArgMaxERKSt6vectorIiSaIiEE.exit ]
  %i.add = zext i32 %i.adc to i64
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %i.add
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !50
  %i.adg = sitofp i32 %i.adf to double
  %i.adh = fdiv double %i.adg, %i.acy
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.adh, ptr %i.adi, align 8, !tbaa !305
  br label %bb.fh

.thread1002:                                      ; preds = %bb.fc, %bb.fa, %.preheader.i, %.preheader45.i, %_ZNSt6vectorIiSaIiEED2Ev.exit347
  store i8 1, ptr %i.aah, align 8, !tbaa !294
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double 1.000000e+00, ptr %i.adj, align 8, !tbaa !305
  %.pre889 = load ptr, ptr %12, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i361 = icmp eq ptr %.pre889, null
  br i1 %.not.i.i.i361, label %_ZNSt6vectorIiSaIiEED2Ev.exit362, label %bb.fh

bb.fh:                                            ; preds = %.thread1006, %.thread1002
  %i.adk = phi ptr [ %i.acr, %.thread1006 ], [ %.pre889, %.thread1002 ] ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !234
  %i.adn = ptrtoint ptr %i.adm to i64
  %i.ado = ptrtoint ptr %i.adk to i64
  %i.adp = sub i64 %i.adn, %i.ado
  call void @_ZdlPvm(ptr noundef nonnull %i.adk, i64 noundef %i.adp) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit362

_ZNSt6vectorIiSaIiEED2Ev.exit362:                 ; preds = %.thread1002, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %.not.i.i.i363 = icmp eq ptr %.sroa.0428.7, null
  br i1 %.not.i.i.i363, label %_ZNSt6vectorIdSaIdEED2Ev.exit366, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit362
  %i.adq = ptrtoint ptr %.sroa.39.7 to i64
  %i.adr = ptrtoint ptr %.sroa.0428.7 to i64
  %i.ads = sub i64 %i.adq, %i.adr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0428.7, i64 noundef %i.ads) #37
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit366

_ZNSt6vectorIdSaIdEED2Ev.exit366:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit362, %bb.fi
  %i.adt = ptrtoint ptr %.sroa.43.7 to i64
  %i.adu = sub i64 %i.adt, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0458.7, i64 noundef %i.adu) #37
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit351:                 ; preds = %bb.ex, %_ZNSt6vectorIiSaIiEED2Ev.exit349, %bb.cl, %bb.cg, %bb.cc, %bb.cb, %bb.br, %bb.bm
  %.pn148 = phi { ptr, i32 } [ %i.ma, %bb.cl ], [ %i.lm, %bb.cg ], [ %i.hq, %bb.bm ], [ %i.ik, %bb.br ], [ %i.kd, %bb.cc ], [ %i.kc, %bb.cb ], [ %.pn1451001, %_ZNSt6vectorIiSaIiEED2Ev.exit349 ], [ %.pn1451001, %bb.ex ]
  %i.adv = load ptr, ptr %12, align 8, !tbaa !75  ; 3 uses
  %.not.i.i.i367 = icmp eq ptr %i.adv, null
  br i1 %.not.i.i.i367, label %_ZNSt6vectorIiSaIiEED2Ev.exit368, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit351
  %i.adw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !234
  %i.ady = ptrtoint ptr %i.adx to i64
  %i.adz = ptrtoint ptr %i.adv to i64
  %i.aea = sub i64 %i.ady, %i.adz
  call void @_ZdlPvm(ptr noundef nonnull %i.adv, i64 noundef %i.aea) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit368

_ZNSt6vectorIiSaIiEED2Ev.exit368:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit351, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.fk

bb.fk:                                            ; preds = %.loopexit600, %.loopexit.split-lp601, %.loopexit591, %.loopexit.split-lp592, %.loopexit586, %.loopexit.split-lp587, %_ZNSt6vectorIiSaIiEED2Ev.exit368, %bb.bf, %bb.w, %bb.n
  %.sroa.0458.8 = phi ptr [ %.sroa.0458.7, %_ZNSt6vectorIiSaIiEED2Ev.exit368 ], [ %.sroa.0458.0, %bb.n ], [ %i.bb, %bb.w ], [ %.sroa.0458.3.lcssa.ph, %bb.bf ], [ %.sroa.0458.3733, %.loopexit.split-lp587 ], [ %.sroa.0458.4.ph593, %.loopexit.split-lp592 ], [ %.sroa.0458.3733, %.loopexit586 ], [ %.sroa.0458.4.ph, %.loopexit591 ], [ %.sroa.0458.12, %.loopexit600 ], [ %.sroa.0458.12, %.loopexit.split-lp601 ] ; 3 uses
end_hunk_1
