inline.NumInlined: 3036
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN6duckdb17AggregateExecutor13BinaryScatterINS_9CorrStateEddNS_13CorrOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_S7_m:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i26

bb.al:                                            ; preds = %bb.aj
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i26: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i27 = phi i32 [ %i.cg, %bb.ak ], [ %i.cq, %bb.al ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i.i27, 1
  br i1 %i.cr, label %bb.am, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i28, !prof !40

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i28

_ZN6duckdb15SelectionVectorD2Ev.exit.i28:         ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i26, %bb.ai, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit23
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i29 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i1.i29, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit33, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.cu, align 8, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !38
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #22, !inline_history !592
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !27
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #22, !inline_history !592
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit33

bb.ap:                                            ; preds = %bb.an
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i30 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i2.i30, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i31

bb.ar:                                            ; preds = %bb.ap
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i31: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i4.i32 = phi i32 [ %i.cx, %bb.aq ], [ %i.dh, %bb.ar ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i.i4.i32, 1
  br i1 %i.di, label %bb.as, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit33, !prof !40

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit33

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit33:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i28, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i31, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.at:                                            ; preds = %bb.a
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.au:                                            ; preds = %bb.b
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.g, %bb.f, %bb.h, %bb.e, %bb.d, %bb.c
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %7) #22
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn = phi { ptr, i32 } [ %i.dl, %bb.av ], [ %i.dk, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #22
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aw ], [ %i.dj, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_9CorrStateEddNS_13CorrOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESH_SH_RNS_12ValidityMaskESJ_(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %8, align 8, !tbaa !181    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null                ; 2 uses
  %i.b = load ptr, ptr %9, align 8                ; 2 uses
  %.not.i33 = icmp eq ptr %i.b, null              ; 2 uses
  %or.cond = select i1 %.not.i, i1 %.not.i33, i1 false
  %.not62 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader56

.preheader56:                                     ; preds = %bb.a
  br i1 %.not62, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader56
  %i.c = load ptr, ptr %5, align 8, !tbaa !210    ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %6, align 8, !tbaa !210    ; 2 uses
  %.not.i35 = icmp eq ptr %i.d, null
  %i.e = load ptr, ptr %7, align 8, !tbaa !210    ; 2 uses
  %.not.i37 = icmp eq ptr %i.e, null
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not62, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader
  %i.f = load ptr, ptr %5, align 8, !tbaa !210    ; 2 uses
  %.not.i43 = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %6, align 8, !tbaa !210    ; 2 uses
  %.not.i45 = icmp eq ptr %i.g, null
  %i.h = load ptr, ptr %7, align 8, !tbaa !210    ; 2 uses
  %.not.i47 = icmp eq ptr %i.h, null
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.058 = phi i64 [ 0, %.lr.ph ], [ %i.by, %bb.f ] ; 7 uses
  br i1 %.not.i34, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.058
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = zext i32 %i.j to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %i.k, %bb.c ], [ %.058, %bb.b ] ; 3 uses
  br i1 %.not.i35, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.058
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = zext i32 %i.n to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36

_ZNK6duckdb15SelectionVector9get_indexEm.exit36:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.d
  %i.p = phi i64 [ %i.o, %bb.d ], [ %.058, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit38, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.058
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = zext i32 %i.r to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit38

_ZNK6duckdb15SelectionVector9get_indexEm.exit38:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, %bb.e
  %i.t = phi i64 [ %i.s, %bb.e ], [ %.058, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit38
  %i.u = lshr i64 %i.l, 6
  %i.v = and i64 %i.l, 63
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !tbaa !58
  %i.y = shl nuw i64 1, %i.v
  %i.z = and i64 %i.x, %i.y
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit38, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  br i1 %.not.i33, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.aa = lshr i64 %i.p, 6
  %i.ab = and i64 %i.p, 63
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aa
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !58
  %i.ae = shl nuw i64 1, %i.ab
  %i.af = and i64 %i.ad, %i.ae
  %.not55 = icmp eq i64 %i.af, 0
  br i1 %.not55, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.t
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !588 ; 10 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !593
  %i.al = add i64 %i.ak, 1                        ; 2 uses
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !593
  %i.am = uitofp i64 %i.al to double
  %i.an = load double, ptr %i.aj, align 8, !tbaa !59 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ap = load double, ptr %i.ai, align 8, !tbaa !59 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !595
  %i.as = load <2 x double>, ptr %i.ao, align 8, !tbaa !59 ; 2 uses
  %i.at = insertelement <2 x double> poison, double %i.an, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.ap, i64 1 ; 2 uses
  %i.av = fsub <2 x double> %i.au, %i.as          ; 2 uses
  %i.aw = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv <2 x double> %i.av, %i.ax
  %i.az = fadd <2 x double> %i.as, %i.ay          ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 1
  %i.bb = fsub double %i.ap, %i.ba
  %i.bc = extractelement <2 x double> %i.av, i64 0
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bb, double %i.ar)
  store <2 x double> %i.az, ptr %i.ao, align 8, !tbaa !59
  store double %i.bd, ptr %i.aq, align 8, !tbaa !595
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !596
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !598 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !599
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !596
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !598 ; 2 uses
  %i.bo = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %i.bp = insertelement <2 x i64> %i.bo, i64 %i.bl, i64 1
  %i.bq = add <2 x i64> %i.bp, splat (i64 1)      ; 3 uses
  %i.br = extractelement <2 x i64> %i.bq, i64 0
  store i64 %i.br, ptr %i.be, align 8, !tbaa !596
  %i.bs = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.bn, i64 1
  %i.bu = fsub <2 x double> %i.au, %i.bt          ; 3 uses
  %i.bv = uitofp <2 x i64> %i.bq to <2 x double>
  %i.bw = fdiv <2 x double> %i.bu, %i.bv          ; 2 uses
  %10 = extractelement <2 x double> %i.bw, i64 0
  %11 = fadd double %i.bh, %10                    ; 2 uses
  %12 = fsub double %i.an, %11
  %13 = extractelement <2 x double> %i.bu, i64 0
  %14 = fmul double %13, %12
  %15 = fadd double %i.bj, %14
  store double %11, ptr %i.bg, align 8, !tbaa !598
  store double %15, ptr %i.bi, align 8, !tbaa !599
  %16 = extractelement <2 x i64> %i.bq, i64 1
  store i64 %16, ptr %i.bk, align 8, !tbaa !596
  %17 = extractelement <2 x double> %i.bw, i64 1
  %18 = fadd double %i.bn, %17                    ; 2 uses
  %19 = fsub double %i.ap, %18
  %i.bx = extractelement <2 x double> %i.bu, i64 1
  %20 = fmul double %i.bx, %19
  %21 = getelementptr inbounds nuw i8, ptr %i.ah, i64 72 ; 2 uses
  %22 = load double, ptr %21, align 8, !tbaa !599
  %23 = fadd double %22, %20
  store double %18, ptr %i.bm, align 8, !tbaa !598
  store double %23, ptr %21, align 8, !tbaa !599
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.by = add nuw i64 %.058, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !600

bb.g:                                             ; preds = %.lr.ph60, %_ZNK6duckdb15SelectionVector9get_indexEm.exit48
  %.03259 = phi i64 [ 0, %.lr.ph60 ], [ %i.ed, %_ZNK6duckdb15SelectionVector9get_indexEm.exit48 ] ; 7 uses
  br i1 %.not.i43, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.03259
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44

_ZNK6duckdb15SelectionVector9get_indexEm.exit44:  ; preds = %bb.g, %bb.h
  %i.cc = phi i64 [ %i.cb, %bb.h ], [ %.03259, %bb.g ]
  br i1 %.not.i45, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit46, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.03259
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit46

_ZNK6duckdb15SelectionVector9get_indexEm.exit46:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44, %bb.i
  %i.cg = phi i64 [ %i.cf, %bb.i ], [ %.03259, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44 ]
  br i1 %.not.i47, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit48, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit46
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.03259
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = zext i32 %i.ci to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit48

_ZNK6duckdb15SelectionVector9get_indexEm.exit48:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit46, %bb.j
  %i.ck = phi i64 [ %i.cj, %bb.j ], [ %.03259, %_ZNK6duckdb15SelectionVector9get_indexEm.exit46 ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !588 ; 10 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cc
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cg
  %i.cp = load i64, ptr %i.cm, align 8, !tbaa !593
  %i.cq = add i64 %i.cp, 1                        ; 2 uses
  store i64 %i.cq, ptr %i.cm, align 8, !tbaa !593
  %i.cr = uitofp i64 %i.cq to double
  %i.cs = load double, ptr %i.co, align 8, !tbaa !59 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cu = load double, ptr %i.cn, align 8, !tbaa !59 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !595
  %i.cx = load <2 x double>, ptr %i.ct, align 8, !tbaa !59 ; 2 uses
  %i.cy = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cu, i64 1 ; 2 uses
  %i.da = fsub <2 x double> %i.cz, %i.cx          ; 2 uses
  %i.db = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fdiv <2 x double> %i.da, %i.dc
  %i.de = fadd <2 x double> %i.cx, %i.dd          ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 1
  %i.dg = fsub double %i.cu, %i.df
  %i.dh = extractelement <2 x double> %i.da, i64 0
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dg, double %i.cw)
  store <2 x double> %i.de, ptr %i.ct, align 8, !tbaa !59
  store double %i.di, ptr %i.cv, align 8, !tbaa !595
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !596
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 40 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !598 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !599
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 56 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !596
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cm, i64 64 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !598 ; 2 uses
  %i.dt = insertelement <2 x i64> poison, i64 %i.dk, i64 0
  %i.du = insertelement <2 x i64> %i.dt, i64 %i.dq, i64 1
  %i.dv = add <2 x i64> %i.du, splat (i64 1)      ; 3 uses
  %i.dw = extractelement <2 x i64> %i.dv, i64 0
  store i64 %i.dw, ptr %i.dj, align 8, !tbaa !596
  %i.dx = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.ds, i64 1
  %i.dz = fsub <2 x double> %i.cz, %i.dy          ; 3 uses
  %i.ea = uitofp <2 x i64> %i.dv to <2 x double>
  %i.eb = fdiv <2 x double> %i.dz, %i.ea          ; 2 uses
  %24 = extractelement <2 x double> %i.eb, i64 0
  %25 = fadd double %i.dm, %24                    ; 2 uses
  %26 = fsub double %i.cs, %25
  %27 = extractelement <2 x double> %i.dz, i64 0
  %28 = fmul double %27, %26
  %29 = fadd double %i.do, %28
  store double %25, ptr %i.dl, align 8, !tbaa !598
  store double %29, ptr %i.dn, align 8, !tbaa !599
  %30 = extractelement <2 x i64> %i.dv, i64 1
  store i64 %30, ptr %i.dp, align 8, !tbaa !596
  %31 = extractelement <2 x double> %i.eb, i64 1
  %32 = fadd double %i.ds, %31                    ; 2 uses
  %33 = fsub double %i.cu, %32
  %i.ec = extractelement <2 x double> %i.dz, i64 1
  %34 = fmul double %i.ec, %33
  %35 = getelementptr inbounds nuw i8, ptr %i.cm, i64 72 ; 2 uses
  %36 = load double, ptr %35, align 8, !tbaa !599
  %37 = fadd double %36, %34
  store double %32, ptr %i.dr, align 8, !tbaa !598
  store double %37, ptr %35, align 8, !tbaa !599
  %i.ed = add nuw i64 %.03259, 1                  ; 2 uses
  %exitcond64.not = icmp eq i64 %i.ed, %4
  br i1 %exitcond64.not, label %.loopexit, label %bb.g, !llvm.loop !601

.loopexit:                                        ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit48, %.preheader56, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !292
  %i.d = icmp eq i8 %i.c, 12
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 12, ptr %i.a, align 1, !tbaa !182
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.h = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13CorrOperation7CombineINS_9CorrStateES0_EEvRKT_RS3_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(17) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !593    ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !602
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !593    ; 3 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add i64 %i.c, %i.a                       ; 2 uses
  %i.e = uitofp i64 %i.a to double                ; 2 uses
  %i.f = uitofp i64 %i.c to double                ; 2 uses
  %i.g = uitofp i64 %i.d to double                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !595
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !595
  %i.n = fadd double %i.k, %i.m
  %i.o = load <2 x double>, ptr %i.h, align 8, !tbaa !59 ; 3 uses
  %i.p = load <2 x double>, ptr %i.i, align 8, !tbaa !59 ; 3 uses
  %i.q = insertelement <2 x double> poison, double %i.e, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.p, %i.r
  %i.t = insertelement <2 x double> poison, double %i.f, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.o, <2 x double> %i.s)
  %i.w = insertelement <2 x double> poison, double %i.g, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fdiv <2 x double> %i.v, %i.x
  %foldExtExtBinop = fsub <2 x double> %i.p, %i.o
  %foldExtExtBinop18 = fsub <2 x double> %i.p, %i.o
  %shift = shufflevector <2 x double> %foldExtExtBinop18, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20 = fmul <2 x double> %foldExtExtBinop, %shift
  %i.z = extractelement <2 x double> %foldExtExtBinop20, i64 0
  %i.aa = fmul double %i.z, %i.f
  %i.ab = fmul double %i.aa, %i.e
  %i.ac = fdiv double %i.ab, %i.g
  %i.ad = fadd double %i.n, %i.ac
  store double %i.ad, ptr %i.l, align 8, !tbaa !595
  store <2 x double> %i.y, ptr %i.i, align 8, !tbaa !59
  store i64 %i.d, ptr %1, align 8, !tbaa !593
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit

_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !596 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !tbaa.struct !603
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit

bb.f:                                             ; preds = %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !596 ; 3 uses
  %.not.i9 = icmp eq i64 %i.ai, 0
  br i1 %.not.i9, label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add i64 %i.ai, %i.ag                    ; 2 uses
  %i.ak = uitofp i64 %i.ag to double
  %i.al = uitofp i64 %i.ai to double              ; 2 uses
  %i.am = uitofp i64 %i.aj to double              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load double, ptr %i.an, align 8, !tbaa !598
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !598 ; 2 uses
  %i.ar = fsub double %i.ao, %i.aq                ; 3 uses
  %i.as = fdiv double %i.al, %i.am
  %i.at = tail call double @llvm.fma.f64(double %i.as, double %i.ar, double %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load double, ptr %i.au, align 8, !tbaa !599
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !599
  %i.ay = fadd double %i.av, %i.ax
  %i.az = fmul double %i.ar, %i.ar
  %i.ba = fmul double %i.az, %i.al
  %i.bb = fmul double %i.ba, %i.ak
  %i.bc = fdiv double %i.bb, %i.am
  %i.bd = fadd double %i.ay, %i.bc
  store double %i.bd, ptr %i.aw, align 8, !tbaa !599
  store double %i.at, ptr %i.ap, align 8, !tbaa !598
  store i64 %i.aj, ptr %i.af, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit

_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !596 ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !tbaa.struct !603
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit11

bb.i:                                             ; preds = %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !596 ; 3 uses
  %.not.i10 = icmp eq i64 %i.bi, 0
  br i1 %.not.i10, label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit11, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = add i64 %i.bi, %i.bg                    ; 2 uses
  %i.bk = uitofp i64 %i.bg to double
  %i.bl = uitofp i64 %i.bi to double              ; 2 uses
  %i.bm = uitofp i64 %i.bj to double              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !598
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !598 ; 2 uses
  %i.br = fsub double %i.bo, %i.bq                ; 3 uses
  %i.bs = fdiv double %i.bl, %i.bm
  %i.bt = tail call double @llvm.fma.f64(double %i.bs, double %i.br, double %i.bq)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !599
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !599
  %i.by = fadd double %i.bv, %i.bx
  %i.bz = fmul double %i.br, %i.br
  %i.ca = fmul double %i.bz, %i.bl
  %i.cb = fmul double %i.ca, %i.bk
  %i.cc = fdiv double %i.cb, %i.bm
  %i.cd = fadd double %i.by, %i.cc
  store double %i.cd, ptr %i.bw, align 8, !tbaa !599
  store double %i.bt, ptr %i.bp, align 8, !tbaa !598
  store i64 %i.bj, ptr %i.bf, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit11

_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_13CorrOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit11: ; preds = %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_9CorrStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !48
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = load i8, ptr %i.c, align 1, !tbaa !48
  store i8 %i.g, ptr %i.b, align 1, !tbaa !182
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.j = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_9CorrStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !48
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_9CorrStateEddNS_13CorrOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_Phm:bb.a
  br i1 %.not.i.i.i.i1.i16, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit20, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bj, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !38
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #22, !inline_history !592
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #22, !inline_history !592
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit20

bb.ab:                                            ; preds = %bb.z
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i17 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i2.i17, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i18

bb.ad:                                            ; preds = %bb.ab
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i18: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i4.i19 = phi i32 [ %i.bm, %bb.ac ], [ %i.bw, %bb.ad ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i.i4.i19, 1
  br i1 %i.bx, label %bb.ae, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit20, !prof !40

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit20

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit20:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i15, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i18, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.af:                                            ; preds = %bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.e, %bb.d, %bb.f, %bb.c, %bb.b
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.ag ], [ %i.by, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_9CorrStateEddNS_13CorrOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESG_RNS_12ValidityMaskESI_(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %7, align 8, !tbaa !181    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null                ; 2 uses
  %i.b = load ptr, ptr %8, align 8                ; 2 uses
  %.not.i27 = icmp eq ptr %i.b, null              ; 2 uses
  %or.cond = select i1 %.not.i, i1 %.not.i27, i1 false
  %.not101 = icmp eq i64 %4, 0                    ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader45

.preheader45:                                     ; preds = %bb.a
  br i1 %.not101, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader45
  %i.c = load ptr, ptr %5, align 8, !tbaa !210    ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %6, align 8, !tbaa !210    ; 2 uses
  %.not.i29 = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  br i1 %.not101, label %.loopexit, label %.lr.ph49

.lr.ph49:                                         ; preds = %.preheader
  %i.m = load ptr, ptr %5, align 8, !tbaa !210    ; 3 uses
  %.not.i35 = icmp eq ptr %i.m, null
  %i.n = load ptr, ptr %6, align 8, !tbaa !210    ; 3 uses
  %.not.i37 = icmp eq ptr %i.n, null              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %.promoted = load i64, ptr %3, align 8, !tbaa !593 ; 4 uses
  %i.w = load <2 x double>, ptr %i.o, align 8, !tbaa !59 ; 3 uses
  %.promoted54 = load double, ptr %i.p, align 8, !tbaa !595 ; 3 uses
  %.promoted56 = load i64, ptr %i.q, align 8, !tbaa !596 ; 2 uses
  %.promoted58 = load double, ptr %i.r, align 8, !tbaa !598
  %.promoted60 = load double, ptr %i.s, align 8, !tbaa !599 ; 3 uses
  %.promoted62 = load i64, ptr %i.t, align 8, !tbaa !596 ; 2 uses
  %.promoted64 = load double, ptr %i.u, align 8, !tbaa !598
  %.promoted66 = load double, ptr %i.v, align 8, !tbaa !599 ; 3 uses
  %i.x = insertelement <2 x double> poison, double %.promoted58, i64 0
  %i.y = insertelement <2 x double> %i.x, double %.promoted64, i64 1 ; 3 uses
  %i.z = insertelement <2 x i64> poison, i64 %.promoted56, i64 0
  %i.aa = insertelement <2 x i64> %i.z, i64 %.promoted62, i64 1 ; 3 uses
  br i1 %.not.i35, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.preheader, label %.lr.ph49.split

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.preheader: ; preds = %.lr.ph49
  %i.ab = insertelement <2 x double> poison, double %.promoted60, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %.promoted66, i64 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us
  %i.ad = phi double [ %i.bd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %.promoted54, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.preheader ]
  %i.ae = phi i64 [ %i.ap, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.preheader ]
  %.048.us = phi i64 [ %i.bm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.preheader ] ; 4 uses
  %i.af = phi <2 x double> [ %i.az, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %i.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.preheader ] ; 2 uses
  %i.ag = phi <2 x double> [ %i.bi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %i.y, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.preheader ] ; 2 uses
  %i.ah = phi <2 x i64> [ %i.be, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %i.aa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.preheader ]
  %i.ai = phi <2 x double> [ %i.bl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %i.ac, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.preheader ]
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.048.us
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = zext i32 %i.ak to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us: ; preds = %bb.b, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us
  %i.am = phi i64 [ %i.al, %bb.b ], [ %.048.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.048.us
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am
  %i.ap = add i64 %i.ae, 1                        ; 2 uses
  %i.aq = uitofp i64 %i.ap to double
  %i.ar = load double, ptr %i.ao, align 8, !tbaa !59
  %i.as = load double, ptr %i.an, align 8, !tbaa !59 ; 2 uses
  %i.at = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1 ; 3 uses
  %i.av = fsub <2 x double> %i.au, %i.af          ; 2 uses
  %i.aw = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv <2 x double> %i.av, %i.ax
  %i.az = fadd <2 x double> %i.af, %i.ay          ; 3 uses
  %i.ba = extractelement <2 x double> %i.az, i64 1
  %i.bb = fsub double %i.as, %i.ba
  %i.bc = extractelement <2 x double> %i.av, i64 0
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bb, double %i.ad) ; 2 uses
  %i.be = add <2 x i64> %i.ah, splat (i64 1)      ; 2 uses
  %i.bf = fsub <2 x double> %i.au, %i.ag          ; 2 uses
  %i.bg = uitofp <2 x i64> %i.be to <2 x double>
  %i.bh = fdiv <2 x double> %i.bf, %i.bg
  %i.bi = fadd <2 x double> %i.ag, %i.bh          ; 4 uses
  %i.bj = fsub <2 x double> %i.au, %i.bi
  %i.bk = fmul <2 x double> %i.bf, %i.bj
  %i.bl = fadd <2 x double> %i.ai, %i.bk          ; 3 uses
  %i.bm = add nuw i64 %.048.us, 1                 ; 2 uses
  %exitcond135.not = icmp eq i64 %i.bm, %4
  br i1 %exitcond135.not, label %..loopexit_crit_edge.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us, !llvm.loop !612

.lr.ph49.split:                                   ; preds = %.lr.ph49
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77: ; preds = %.lr.ph49.split, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77
  %i.bn = phi double [ %i.cw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %.promoted66, %.lr.ph49.split ]
  %i.bo = phi double [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %.promoted60, %.lr.ph49.split ]
  %i.bp = phi double [ %i.cn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %.promoted54, %.lr.ph49.split ]
  %i.bq = phi i64 [ %i.bz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %.promoted, %.lr.ph49.split ]
  %.048.us78 = phi i64 [ %i.cx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ 0, %.lr.ph49.split ] ; 3 uses
  %i.br = phi <2 x double> [ %i.cj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %i.w, %.lr.ph49.split ] ; 2 uses
  %i.bs = phi <2 x double> [ %i.cs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %i.y, %.lr.ph49.split ] ; 2 uses
  %i.bt = phi <2 x i64> [ %i.co, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %i.aa, %.lr.ph49.split ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.048.us78
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.048.us78
  %i.bz = add i64 %i.bq, 1                        ; 2 uses
  %i.ca = uitofp i64 %i.bz to double
  %i.cb = load double, ptr %i.by, align 8, !tbaa !59 ; 2 uses
  %i.cc = load double, ptr %i.bx, align 8, !tbaa !59 ; 3 uses
  %i.cd = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.cc, i64 1 ; 2 uses
  %i.cf = fsub <2 x double> %i.ce, %i.br          ; 2 uses
  %i.cg = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fdiv <2 x double> %i.cf, %i.ch
  %i.cj = fadd <2 x double> %i.br, %i.ci          ; 3 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 1
  %i.cl = fsub double %i.cc, %i.ck
  %i.cm = extractelement <2 x double> %i.cf, i64 0
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cl, double %i.bp) ; 2 uses
  %i.co = add <2 x i64> %i.bt, splat (i64 1)      ; 2 uses
  %i.cp = fsub <2 x double> %i.ce, %i.bs          ; 3 uses
  %i.cq = uitofp <2 x i64> %i.co to <2 x double>
  %i.cr = fdiv <2 x double> %i.cp, %i.cq
  %i.cs = fadd <2 x double> %i.bs, %i.cr          ; 3 uses
  %9 = extractelement <2 x double> %i.cs, i64 0   ; 2 uses
  %10 = fsub double %i.cb, %9
  %i.ct = extractelement <2 x double> %i.cp, i64 0
  %11 = fmul double %i.ct, %10
  %i.cu = fadd double %i.bo, %11                  ; 2 uses
  %12 = extractelement <2 x double> %i.cs, i64 1  ; 2 uses
  %13 = fsub double %i.cc, %12
  %i.cv = extractelement <2 x double> %i.cp, i64 1
  %14 = fmul double %i.cv, %13
  %i.cw = fadd double %i.bn, %14                  ; 2 uses
  %i.cx = add nuw i64 %.048.us78, 1               ; 2 uses
  %exitcond134.not = icmp eq i64 %i.cx, %4
  br i1 %exitcond134.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77, !llvm.loop !612

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.02647 = phi i64 [ 0, %.lr.ph ], [ %i.fb, %bb.f ] ; 5 uses
  br i1 %.not.i28, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02647
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.c, %bb.d
  %i.db = phi i64 [ %i.da, %bb.d ], [ %.02647, %bb.c ] ; 3 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02647
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = zext i32 %i.dd to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30

_ZNK6duckdb15SelectionVector9get_indexEm.exit30:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.e
  %i.df = phi i64 [ %i.de, %bb.e ], [ %.02647, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit30
  %i.dg = lshr i64 %i.db, 6
  %i.dh = and i64 %i.db, 63
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dg
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !58
  %i.dk = shl nuw i64 1, %i.dh
  %i.dl = and i64 %i.dj, %i.dk
  %.not = icmp eq i64 %i.dl, 0
  br i1 %.not, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit30, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  br i1 %.not.i27, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.dm = lshr i64 %i.df, 6
  %i.dn = and i64 %i.df, 63
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dm
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !58
  %i.dq = shl nuw i64 1, %i.dn
  %i.dr = and i64 %i.dp, %i.dq
  %.not44 = icmp eq i64 %i.dr, 0
  br i1 %.not44, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.db
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.df
  %i.du = load i64, ptr %3, align 8, !tbaa !593
  %i.dv = add i64 %i.du, 1                        ; 2 uses
  store i64 %i.dv, ptr %3, align 8, !tbaa !593
  %i.dw = uitofp i64 %i.dv to double
  %i.dx = load double, ptr %i.dt, align 8, !tbaa !59 ; 2 uses
  %i.dy = load double, ptr %i.ds, align 8, !tbaa !59 ; 3 uses
  %i.dz = load double, ptr %i.f, align 8, !tbaa !595
  %i.ea = load <2 x double>, ptr %i.e, align 8, !tbaa !59 ; 2 uses
  %i.eb = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dy, i64 1 ; 2 uses
  %i.ed = fsub <2 x double> %i.ec, %i.ea          ; 2 uses
  %i.ee = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fdiv <2 x double> %i.ed, %i.ef
  %i.eh = fadd <2 x double> %i.ea, %i.eg          ; 2 uses
  %i.ei = extractelement <2 x double> %i.eh, i64 1
  %i.ej = fsub double %i.dy, %i.ei
  %i.ek = extractelement <2 x double> %i.ed, i64 0
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.ej, double %i.dz)
  store <2 x double> %i.eh, ptr %i.e, align 8, !tbaa !59
  store double %i.el, ptr %i.f, align 8, !tbaa !595
  %i.em = load i64, ptr %i.g, align 8, !tbaa !596
  %i.en = load double, ptr %i.h, align 8, !tbaa !598 ; 2 uses
  %i.eo = load double, ptr %i.i, align 8, !tbaa !599
  %i.ep = load i64, ptr %i.j, align 8, !tbaa !596
  %i.eq = load double, ptr %i.k, align 8, !tbaa !598 ; 2 uses
  %i.er = insertelement <2 x i64> poison, i64 %i.em, i64 0
  %i.es = insertelement <2 x i64> %i.er, i64 %i.ep, i64 1
  %i.et = add <2 x i64> %i.es, splat (i64 1)      ; 3 uses
  %i.eu = extractelement <2 x i64> %i.et, i64 0
  store i64 %i.eu, ptr %i.g, align 8, !tbaa !596
  %i.ev = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.eq, i64 1
  %i.ex = fsub <2 x double> %i.ec, %i.ew          ; 3 uses
  %i.ey = uitofp <2 x i64> %i.et to <2 x double>
  %i.ez = fdiv <2 x double> %i.ex, %i.ey          ; 2 uses
  %15 = extractelement <2 x double> %i.ez, i64 0
  %16 = fadd double %i.en, %15                    ; 2 uses
  %17 = fsub double %i.dx, %16
  %18 = extractelement <2 x double> %i.ex, i64 0
  %19 = fmul double %18, %17
  %20 = fadd double %i.eo, %19
  store double %16, ptr %i.h, align 8, !tbaa !598
  store double %20, ptr %i.i, align 8, !tbaa !599
  %21 = extractelement <2 x i64> %i.et, i64 1
  store i64 %21, ptr %i.j, align 8, !tbaa !596
  %22 = extractelement <2 x double> %i.ez, i64 1
  %23 = fadd double %i.eq, %22                    ; 2 uses
  %24 = fsub double %i.dy, %23
  %i.fa = extractelement <2 x double> %i.ex, i64 1
  %25 = fmul double %i.fa, %24
  %26 = load double, ptr %i.l, align 8, !tbaa !599
  %27 = fadd double %26, %25
  store double %23, ptr %i.k, align 8, !tbaa !598
  store double %27, ptr %i.l, align 8, !tbaa !599
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread
  %i.fb = add nuw i64 %.02647, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fb, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !613

_ZNK6duckdb15SelectionVector9get_indexEm.exit36:  ; preds = %.lr.ph49.split, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36
  %i.fc = phi double [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %.promoted66, %.lr.ph49.split ]
  %i.fd = phi double [ %i.gm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %.promoted60, %.lr.ph49.split ]
  %i.fe = phi double [ %i.gf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %.promoted54, %.lr.ph49.split ]
  %i.ff = phi i64 [ %i.fr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %.promoted, %.lr.ph49.split ]
  %.048 = phi i64 [ %i.gp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ 0, %.lr.ph49.split ] ; 3 uses
  %i.fg = phi <2 x double> [ %i.gb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %i.w, %.lr.ph49.split ] ; 2 uses
  %i.fh = phi <2 x double> [ %i.gk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %i.y, %.lr.ph49.split ] ; 2 uses
  %i.fi = phi <2 x i64> [ %i.gg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %i.aa, %.lr.ph49.split ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.048
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.048
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fl
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fo
  %i.fr = add i64 %i.ff, 1                        ; 2 uses
  %i.fs = uitofp i64 %i.fr to double
  %i.ft = load double, ptr %i.fq, align 8, !tbaa !59 ; 2 uses
  %i.fu = load double, ptr %i.fp, align 8, !tbaa !59 ; 3 uses
  %i.fv = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fu, i64 1 ; 2 uses
  %i.fx = fsub <2 x double> %i.fw, %i.fg          ; 2 uses
  %i.fy = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = fdiv <2 x double> %i.fx, %i.fz
  %i.gb = fadd <2 x double> %i.fg, %i.ga          ; 3 uses
  %i.gc = extractelement <2 x double> %i.gb, i64 1
  %i.gd = fsub double %i.fu, %i.gc
  %i.ge = extractelement <2 x double> %i.fx, i64 0
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gd, double %i.fe) ; 2 uses
  %i.gg = add <2 x i64> %i.fi, splat (i64 1)      ; 2 uses
  %i.gh = fsub <2 x double> %i.fw, %i.fh          ; 3 uses
  %i.gi = uitofp <2 x i64> %i.gg to <2 x double>
  %i.gj = fdiv <2 x double> %i.gh, %i.gi
  %i.gk = fadd <2 x double> %i.fh, %i.gj          ; 3 uses
  %28 = extractelement <2 x double> %i.gk, i64 0  ; 2 uses
  %29 = fsub double %i.ft, %28
  %i.gl = extractelement <2 x double> %i.gh, i64 0
  %30 = fmul double %i.gl, %29
  %i.gm = fadd double %i.fd, %30                  ; 2 uses
  %31 = extractelement <2 x double> %i.gk, i64 1  ; 2 uses
  %32 = fsub double %i.fu, %31
  %i.gn = extractelement <2 x double> %i.gh, i64 1
  %33 = fmul double %i.gn, %32
  %i.go = fadd double %i.fc, %33                  ; 2 uses
  %i.gp = add nuw i64 %.048, 1                    ; 2 uses
  %exitcond133.not = icmp eq i64 %i.gp, %4
  br i1 %exitcond133.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, !llvm.loop !612

..loopexit_crit_edge.loopexit:                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us
  %i.gq = extractelement <2 x double> %i.bl, i64 1
  %i.gr = extractelement <2 x double> %i.bl, i64 0
  %i.gs = extractelement <2 x double> %i.bi, i64 1
  %i.gt = extractelement <2 x double> %i.bi, i64 0
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77, %..loopexit_crit_edge.loopexit
  %.us-phi = phi double [ %i.cw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %i.gq, %..loopexit_crit_edge.loopexit ], [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %.us-phi68 = phi double [ %12, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %i.gs, %..loopexit_crit_edge.loopexit ], [ %31, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %.us-phi70 = phi double [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %i.gr, %..loopexit_crit_edge.loopexit ], [ %i.gm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %.us-phi71 = phi double [ %9, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %i.gt, %..loopexit_crit_edge.loopexit ], [ %28, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %.us-phi73 = phi double [ %i.cn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %i.bd, %..loopexit_crit_edge.loopexit ], [ %i.gf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %i.gu = phi <2 x double> [ %i.cj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us77 ], [ %i.az, %..loopexit_crit_edge.loopexit ], [ %i.gb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %.us-phi76 = add i64 %.promoted, %4
  %.us-phi72 = add i64 %.promoted56, %4
  %.us-phi69 = add i64 %.promoted62, %4
  store i64 %.us-phi76, ptr %3, align 8, !tbaa !593
  store <2 x double> %i.gu, ptr %i.o, align 8, !tbaa !59
  store double %.us-phi73, ptr %i.p, align 8, !tbaa !595
  store i64 %.us-phi72, ptr %i.q, align 8, !tbaa !596
  store double %.us-phi71, ptr %i.r, align 8, !tbaa !598
  store double %.us-phi70, ptr %i.s, align 8, !tbaa !599
  store i64 %.us-phi69, ptr %i.t, align 8, !tbaa !596
  store double %.us-phi68, ptr %i.u, align 8, !tbaa !598
  store double %.us-phi, ptr %i.v, align 8, !tbaa !599
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.preheader45, %.preheader, %..loopexit_crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_11StddevStateEEEmRKS0_(ptr noundef nonnull align 8 dereferenceable(368) %0) #5 comdat align 2 {
bb.a:
  ret i64 24
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction15StateInitializeINS_11StddevStateENS_19STDDevSampOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_11StddevStateEdNS_19STDDevSampOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineINS_11StddevStateENS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i
  %.09.i = phi i64 [ %i.ag, %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !614  ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !614  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !596  ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !603
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !596  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %i.m = uitofp i64 %i.i to double
  %i.n = uitofp i64 %i.k to double                ; 2 uses
  %i.o = uitofp i64 %i.l to double                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !598
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !598 ; 2 uses
  %i.t = fsub double %i.q, %i.s                   ; 3 uses
  %i.u = fdiv double %i.n, %i.o
  %i.v = tail call double @llvm.fma.f64(double %i.u, double %i.t, double %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !599
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !599
  %i.aa = fadd double %i.x, %i.z
  %i.ab = fmul double %i.t, %i.t
  %i.ac = fmul double %i.ab, %i.n
  %i.ad = fmul double %i.ac, %i.m
  %i.ae = fdiv double %i.ad, %i.o
  %i.af = fadd double %i.aa, %i.ae
  store double %i.af, ptr %i.y, align 8, !tbaa !599
  store double %i.v, ptr %i.r, align 8, !tbaa !598
  store i64 %i.l, ptr %i.h, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ag = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !616

_ZN6duckdb17AggregateExecutor7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb19STDDevBaseOperation7CombineINS_11StddevStateENS_19STDDevSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor8FinalizeINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction11UnaryUpdateINS_11StddevStateEdNS_19STDDevSampOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor12UnaryScatterINS_11StddevStateEdNS_19STDDevSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !167
  switch i8 %i.a, label %.thread [
    i8 2, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 8, !tbaa !167
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183  ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_11StddevStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !614  ; 4 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %.promoted.i = load i64, ptr %i.l, align 1      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %.pre.i = load double, ptr %i.m, align 8, !tbaa !598 ; 2 uses
  %.pre6.i = load double, ptr %i.n, align 8, !tbaa !599 ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.o = icmp eq i64 %3, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %3, -2
  br label %bb.d

._crit_edge.i.unr-lcssa:                          ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi double [ %.pre6.i, %.lr.ph.i ], [ %i.as, %._crit_edge.i.unr-lcssa ]
  %.epil.init118 = phi double [ %.pre.i, %.lr.ph.i ], [ %i.ap, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.epil.init120 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ak, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.p = add i64 %.epil.init120, 1                ; 2 uses
  %i.q = load double, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %i.r = fsub double %i.q, %.epil.init118         ; 2 uses
  %i.s = uitofp i64 %i.p to double
  %i.t = fdiv double %i.r, %i.s
  %i.u = fadd double %.epil.init118, %i.t         ; 2 uses
  %i.v = fsub double %i.q, %i.u
  %i.w = fmul double %i.r, %i.v
  %i.x = fadd double %.epil.init, %i.w
  store double %i.u, ptr %i.m, align 8, !tbaa !598
  store double %i.x, ptr %i.n, align 8, !tbaa !599
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ak, %._crit_edge.i.unr-lcssa ], [ %i.p, %.epil.preheader ]
  store i64 %.lcssa, ptr %i.l, align 8, !tbaa !596
  br label %_ZN6duckdb19STDDevBaseOperation17ConstantOperationIdNS_11StddevStateENS_19STDDevSampOperationEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
end_hunk_1
begin_hunk_2_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  call void @llvm.assume(i1 %lcmp.mod81)
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %.04.i.i.epil.init
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3, !noalias !1111
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.hx
  %.val.i29.i.epil = load double, ptr %i.hy, align 8, !tbaa !59, !alias.scope !1106, !noalias !1109
  %i.hz = fsub double %.val.i29.i.epil, %.epil.init77 ; 2 uses
  %i.ia = fadd double %.epil.init, %i.hz          ; 2 uses
  %i.ib = fsub double %i.ia, %.epil.init
  %i.ic = fsub double %i.ib, %i.hz
  br label %..loopexit_crit_edge.i30.i

..loopexit_crit_edge.i30.i:                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil
  %.us-phi.i.i = phi double [ %i.hr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fw, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.hj, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ], [ %i.ia, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.us-phi10.i.i = phi double [ %i.ht, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.us.i.i.epil ], [ %i.fy, %..loopexit_crit_edge.i30.i.loopexit.unr-lcssa ], [ %i.hl, %..loopexit_crit_edge.i30.i.loopexit57.unr-lcssa ], [ %i.ic, %_ZNK6duckdb15SelectionVector9get_indexEm.exit22.i.i.epil.preheader ]
  %.us-phi11.i.i = add i64 %.promoted.i28.i, %4
  store i64 %.us-phi11.i.i, ptr %3, align 8, !tbaa !1045, !alias.scope !1109, !noalias !1106
  store double %.us-phi10.i.i, ptr %i.ex, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106
  store double %.us-phi.i.i, ptr %i.ew, align 8, !tbaa !59, !alias.scope !1109, !noalias !1106
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %bb.l, %bb.j, %..loopexit_crit_edge.i30.i, %.preheader.i27.i, %.preheader1.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 4 uses
  %i.ig = load atomic i64, ptr %i.if acquire, align 8 ; 2 uses
  %i.ih = icmp eq i64 %i.ig, 4294967297
  %i.ii = trunc i64 %i.ig to i32                  ; 2 uses
  br i1 %i.ih, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.if, align 8, !tbaa !36
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store i32 0, ptr %i.ij, align 4, !tbaa !38
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !27
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #22, !inline_history !1115
  %i.in = load ptr, ptr %i.ie, align 8, !tbaa !27
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #22, !inline_history !1115
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ir = add nsw i32 %i.ii, -1
  store i32 %i.ir, ptr %i.if, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.is = atomicrmw volatile add ptr %i.if, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ii, %bb.p ], [ %i.is, %bb.q ]
  %i.it = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.it, label %bb.r, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !40

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ie) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.n, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.iw, align 8, !tbaa !36
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !38
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !27
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #22, !inline_history !1116
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !27
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #22, !inline_history !1116
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.u:                                             ; preds = %bb.s
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.w:                                             ; preds = %bb.u
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.iz, %bb.v ], [ %i.jj, %bb.w ]
  %i.jk = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.jk, label %bb.x, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !40

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.t, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.y:                                             ; preds = %bb.g, %bb.f
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.jl

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %bb.c, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_10CovarStateEEEmRKS0_(ptr noundef nonnull align 8 dereferenceable(368) %0) #5 comdat align 2 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction15StateInitializeINS_10CovarStateENS_17CovarPopOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction19BinaryScatterUpdateINS_10CovarStateEddNS_17CovarPopOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb17AggregateExecutor13BinaryScatterINS_10CovarStateEddNS_17CovarPopOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_S7_m(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineINS_10CovarStateENS_17CovarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_10CovarStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_10CovarStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i
  %.09.i = phi i64 [ %i.am, %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1117 ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1117 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !593  ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !602
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !593  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %i.m = uitofp i64 %i.i to double                ; 2 uses
  %i.n = uitofp i64 %i.k to double                ; 2 uses
  %i.o = uitofp i64 %i.l to double                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !595
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !595
  %i.v = fadd double %i.s, %i.u
  %i.w = load <2 x double>, ptr %i.p, align 8, !tbaa !59 ; 3 uses
  %i.x = load <2 x double>, ptr %i.q, align 8, !tbaa !59 ; 3 uses
  %i.y = insertelement <2 x double> poison, double %i.m, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.x, %i.z
  %i.ab = insertelement <2 x double> poison, double %i.n, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.w, <2 x double> %i.aa)
  %i.ae = insertelement <2 x double> poison, double %i.o, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fdiv <2 x double> %i.ad, %i.af
  %foldExtExtBinop = fsub <2 x double> %i.x, %i.w
  %foldExtExtBinop7 = fsub <2 x double> %i.x, %i.w
  %shift = shufflevector <2 x double> %foldExtExtBinop7, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9 = fmul <2 x double> %foldExtExtBinop, %shift
  %i.ah = extractelement <2 x double> %foldExtExtBinop9, i64 0
  %i.ai = fmul double %i.ah, %i.n
  %i.aj = fmul double %i.ai, %i.m
  %i.ak = fdiv double %i.aj, %i.o
  %i.al = fadd double %i.v, %i.ak
  store double %i.al, ptr %i.t, align 8, !tbaa !595
  store <2 x double> %i.ag, ptr %i.q, align 8, !tbaa !59
  store i64 %i.l, ptr %i.h, align 8, !tbaa !593
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.am = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.am, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1119

_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_17CovarPopOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_10CovarStateEdNS_17CovarPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor8FinalizeINS_10CovarStateEdNS_17CovarPopOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12BinaryUpdateINS_10CovarStateEddNS_17CovarPopOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_10CovarStateEddNS_17CovarPopOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_Phm(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor13BinaryScatterINS_10CovarStateEddNS_17CovarPopOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_S7_m(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.at

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.d unwind label %bb.av

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.e unwind label %bb.av

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.f unwind label %bb.av

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.av

bb.g:                                             ; preds = %bb.f
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.h unwind label %bb.av

bb.h:                                             ; preds = %bb.g
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !211
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211
  %i.g = load ptr, ptr %5, align 8, !tbaa !201
  %i.h = load ptr, ptr %6, align 8, !tbaa !201
  %i.i = load ptr, ptr %7, align 8, !tbaa !201
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  invoke void @_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_10CovarStateEddNS_17CovarPopOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESH_SH_RNS_12ValidityMaskESJ_(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.i unwind label %bb.av

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.n, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !38
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !591
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !591
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.m ], [ %i.aa, %bb.n ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.o, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !40

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ae, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !38
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !592
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !592
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.t:                                             ; preds = %bb.r
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ah, %bb.s ], [ %i.ar, %bb.t ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.as, label %bb.u, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !40

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i14, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i18, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.w, label %bb.x

end_hunk_2
begin_hunk_3_@_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_10CovarStateEddNS_17CovarPopOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESG_RNS_12ValidityMaskESI_:bb.a
  %i.de = phi <2 x double> [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %i.cc, %.lr.ph54.split ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.053.us65
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.053.us65
  %i.dk = add i64 %i.dd, 1                        ; 2 uses
  %i.dl = uitofp i64 %i.dk to double
  %i.dm = load double, ptr %i.dj, align 8, !tbaa !59
  %i.dn = load double, ptr %i.di, align 8, !tbaa !59 ; 2 uses
  %i.do = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dn, i64 1
  %i.dq = fsub <2 x double> %i.dp, %i.de          ; 2 uses
  %i.dr = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fdiv <2 x double> %i.dq, %i.ds
  %i.du = fadd <2 x double> %i.de, %i.dt          ; 3 uses
  %i.dv = extractelement <2 x double> %i.du, i64 1
  %i.dw = fsub double %i.dn, %i.dv
  %i.dx = extractelement <2 x double> %i.dq, i64 0
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dw, double %i.dc) ; 2 uses
  %i.dz = add nuw i64 %.053.us65, 1               ; 2 uses
  %exitcond95.not = icmp eq i64 %i.dz, %4
  br i1 %exitcond95.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64, !llvm.loop !1124

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.k
  %.02647 = phi i64 [ %i.fo, %bb.k ], [ 0, %.lr.ph.split ] ; 5 uses
  br i1 %.not.i28, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02647
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = zext i32 %i.eb to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph.split.split, %bb.i
  %i.ed = phi i64 [ %i.ec, %bb.i ], [ %.02647, %.lr.ph.split.split ] ; 3 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02647
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eg = zext i32 %i.ef to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30

_ZNK6duckdb15SelectionVector9get_indexEm.exit30:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.j
  %i.eh = phi i64 [ %i.eg, %bb.j ], [ %.02647, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.ei = lshr i64 %i.ed, 6
  %i.ej = and i64 %i.ed, 63
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ei
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !58
  %i.em = shl nuw i64 1, %i.ej
  %i.en = and i64 %i.el, %i.em
  %.not = icmp eq i64 %i.en, 0
  br i1 %.not, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit30
  %i.eo = lshr i64 %i.eh, 6
  %i.ep = and i64 %i.eh, 63
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.eo
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !58
  %i.es = shl nuw i64 1, %i.ep
  %i.et = and i64 %i.er, %i.es
  %.not44 = icmp eq i64 %i.et, 0
  br i1 %.not44, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ed
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.eh
  %i.ew = load i64, ptr %3, align 8, !tbaa !593
  %i.ex = add i64 %i.ew, 1                        ; 2 uses
  store i64 %i.ex, ptr %3, align 8, !tbaa !593
  %i.ey = uitofp i64 %i.ex to double
  %i.ez = load double, ptr %i.ev, align 8, !tbaa !59
  %i.fa = load double, ptr %i.eu, align 8, !tbaa !59 ; 2 uses
  %i.fb = load double, ptr %i.f, align 8, !tbaa !595
  %i.fc = load <2 x double>, ptr %i.e, align 8, !tbaa !59 ; 2 uses
  %i.fd = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.fa, i64 1
  %i.ff = fsub <2 x double> %i.fe, %i.fc          ; 2 uses
  %i.fg = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fdiv <2 x double> %i.ff, %i.fh
  %i.fj = fadd <2 x double> %i.fc, %i.fi          ; 2 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 1
  %i.fl = fsub double %i.fa, %i.fk
  %i.fm = extractelement <2 x double> %i.ff, i64 0
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fl, double %i.fb)
  store <2 x double> %i.fj, ptr %i.e, align 8, !tbaa !59
  store double %i.fn, ptr %i.f, align 8, !tbaa !595
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit30, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread
  %i.fo = add nuw i64 %.02647, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %4
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !1123

_ZNK6duckdb15SelectionVector9get_indexEm.exit36:  ; preds = %.lr.ph54.split, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36
  %i.fp = phi double [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %.promoted59, %.lr.ph54.split ]
  %i.fq = phi i64 [ %i.ga, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %.promoted, %.lr.ph54.split ]
  %.053 = phi i64 [ %i.gp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ 0, %.lr.ph54.split ] ; 3 uses
  %i.fr = phi <2 x double> [ %i.gk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %i.cc, %.lr.ph54.split ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.053
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.053
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fu
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fx
  %i.ga = add i64 %i.fq, 1                        ; 2 uses
  %i.gb = uitofp i64 %i.ga to double
  %i.gc = load double, ptr %i.fz, align 8, !tbaa !59
  %i.gd = load double, ptr %i.fy, align 8, !tbaa !59 ; 2 uses
  %i.ge = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gd, i64 1
  %i.gg = fsub <2 x double> %i.gf, %i.fr          ; 2 uses
  %i.gh = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = fdiv <2 x double> %i.gg, %i.gi
  %i.gk = fadd <2 x double> %i.fr, %i.gj          ; 3 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 1
  %i.gm = fsub double %i.gd, %i.gl
  %i.gn = extractelement <2 x double> %i.gg, i64 0
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.gm, double %i.fp) ; 2 uses
  %i.gp = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond94.not = icmp eq i64 %i.gp, %4
  br i1 %exitcond94.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, !llvm.loop !1124

..loopexit_crit_edge:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us
  %.us-phi = phi double [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %i.gq = phi <2 x double> [ %i.cw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %i.gk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %.us-phi63 = add i64 %.promoted, %4
  store i64 %.us-phi63, ptr %3, align 8, !tbaa !593
  store <2 x double> %i.gq, ptr %i.ca, align 8, !tbaa !59
  store double %.us-phi, ptr %i.cb, align 8, !tbaa !595
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.g, %bb.d, %.preheader45, %.preheader, %..loopexit_crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction15StateInitializeINS_10CovarStateENS_18CovarSampOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction19BinaryScatterUpdateINS_10CovarStateEddNS_18CovarSampOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS4_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb17AggregateExecutor13BinaryScatterINS_10CovarStateEddNS_18CovarSampOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_S7_m(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineINS_10CovarStateENS_18CovarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_10CovarStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_10CovarStateEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i
  %.09.i = phi i64 [ %i.am, %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1117 ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1117 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !593  ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !602
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !593  ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  %i.m = uitofp i64 %i.i to double                ; 2 uses
  %i.n = uitofp i64 %i.k to double                ; 2 uses
  %i.o = uitofp i64 %i.l to double                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !595
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !595
  %i.v = fadd double %i.s, %i.u
  %i.w = load <2 x double>, ptr %i.p, align 8, !tbaa !59 ; 3 uses
  %i.x = load <2 x double>, ptr %i.q, align 8, !tbaa !59 ; 3 uses
  %i.y = insertelement <2 x double> poison, double %i.m, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.x, %i.z
  %i.ab = insertelement <2 x double> poison, double %i.n, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.w, <2 x double> %i.aa)
  %i.ae = insertelement <2 x double> poison, double %i.o, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fdiv <2 x double> %i.ad, %i.af
  %foldExtExtBinop = fsub <2 x double> %i.x, %i.w
  %foldExtExtBinop7 = fsub <2 x double> %i.x, %i.w
  %shift = shufflevector <2 x double> %foldExtExtBinop7, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9 = fmul <2 x double> %foldExtExtBinop, %shift
  %i.ah = extractelement <2 x double> %foldExtExtBinop9, i64 0
  %i.ai = fmul double %i.ah, %i.n
  %i.aj = fmul double %i.ai, %i.m
  %i.ak = fdiv double %i.aj, %i.o
  %i.al = fadd double %i.v, %i.ak
  store double %i.al, ptr %i.t, align 8, !tbaa !595
  store <2 x double> %i.ag, ptr %i.q, align 8, !tbaa !59
  store i64 %i.l, ptr %i.h, align 8, !tbaa !593
  br label %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.am = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.am, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1125

_ZN6duckdb17AggregateExecutor7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRNS_6VectorES5_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb14CovarOperation7CombineINS_10CovarStateENS_18CovarSampOperationEEEvRKT_RS4_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_10CovarStateEdNS_18CovarSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor8FinalizeINS_10CovarStateEdNS_18CovarSampOperationEEEvRNS_6VectorERNS_18AggregateInputDataES5_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12BinaryUpdateINS_10CovarStateEddNS_18CovarSampOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_10CovarStateEddNS_18CovarSampOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_Phm(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor13BinaryScatterINS_10CovarStateEddNS_18CovarSampOperationEEEvRNS_18AggregateInputDataERNS_6VectorES7_S7_m(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.at

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.d unwind label %bb.av

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.e unwind label %bb.av

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.f unwind label %bb.av

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.av

bb.g:                                             ; preds = %bb.f
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.h unwind label %bb.av

bb.h:                                             ; preds = %bb.g
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !211
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211
  %i.g = load ptr, ptr %5, align 8, !tbaa !201
  %i.h = load ptr, ptr %6, align 8, !tbaa !201
  %i.i = load ptr, ptr %7, align 8, !tbaa !201
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  invoke void @_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_10CovarStateEddNS_18CovarSampOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESH_SH_RNS_12ValidityMaskESJ_(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.i unwind label %bb.av

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.n, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !38
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !591
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !591
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.m ], [ %i.aa, %bb.n ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.o, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !40

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ae, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !38
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !592
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !592
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.t:                                             ; preds = %bb.r
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ah, %bb.s ], [ %i.ar, %bb.t ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.as, label %bb.u, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !40

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !29 ; 8 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i14, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i18, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.w, label %bb.x

end_hunk_3
