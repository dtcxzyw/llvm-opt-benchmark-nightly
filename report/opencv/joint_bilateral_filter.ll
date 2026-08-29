Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/joint_bilateral_filter?download=true
inline.NumInlined: 359
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv8ximgproc24jointBilateralFilter_32fERNS_3MatES2_S2_iddi:bb.a
  %i.ai = fmul double %4, %4
  %i.aj = fdiv double -5.000000e-01, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = uitofp nneg i32 %i.ak to float
  %i.am = fdiv float %i.al, %i.ah
  %i.an = fpext float %i.am to double             ; 2 uses
  %i.ao = fmul double %i.an, %i.an
  %i.ap = fmul double %i.aj, %i.ao
  %i.aq = call double @exp(double noundef %i.ap) #15
  %i.ar = fptrunc double %i.aq to float
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  store float %i.ar, ptr %i.as, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !27

bb.e:                                             ; preds = %bb.d
  %i.at = fmul double %5, %5
  %i.au = fdiv double -5.000000e-01, %i.at
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.av, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.aw, align 4, !tbaa !19
  store i32 16842752, ptr %12, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %0, ptr %i.ax, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.az, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !20
  store ptr %10, ptr %i.ay, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %3, i32 noundef %3, i32 noundef %3, i32 noundef %3, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.ba, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.bb, align 4, !tbaa !19
  store i32 16842752, ptr %15, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %1, ptr %i.bc, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.be, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !20
  store ptr %11, ptr %i.bd, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %3, i32 noundef %3, i32 noundef %3, i32 noundef %3, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !29
  %i.bh = load i32, ptr %11, align 8, !tbaa !8    ; 2 uses
  %i.bi = lshr i32 %i.bh, 5
  %i.bj = and i32 %i.bi, 127
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = shl i32 %i.bh, 2
  %i.bm = and i32 %i.bl, 124
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 1275511473185297, %i.bn
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 15
  %i.br = mul nuw nsw i32 %i.bq, %i.bk
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = udiv i64 %i.bg, %i.bs                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !29
  %i.bw = load i32, ptr %10, align 8, !tbaa !8    ; 2 uses
  %i.bx = lshr i32 %i.bw, 5
  %i.by = and i32 %i.bx, 127
  %i.bz = add nuw nsw i32 %i.by, 1
  %i.ca = shl i32 %i.bw, 2
  %i.cb = and i32 %i.ca, 124
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = lshr i64 1275511473185297, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 15
  %i.cg = mul nuw nsw i32 %i.cf, %i.bz
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = udiv i64 %i.bv, %i.ch
  %i.cj = icmp eq i64 %i.bt, %i.ci
  br i1 %i.cj, label %bb.o, label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit160

bb.i:                                             ; preds = %bb.f
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit160

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv8ximgproc24jointBilateralFilter_32fERNS_3MatES2_S2_iddi, ptr noundef nonnull @.str.1, i32 noundef 160) #17
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %18, align 8, !tbaa !31   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !34
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn134 = phi { ptr, i32 } [ %i.cm, %bb.m ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit160

bb.o:                                             ; preds = %bb.g
  %i.ct = mul nsw i32 %i.d, %i.d
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cv = shl nuw nsw i64 %i.cu, 2                ; 6 uses
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #16
          to label %.noexc unwind label %bb.p     ; 9 uses

.noexc:                                           ; preds = %bb.o
  store float 0.000000e+00, ptr %i.cw, align 4, !tbaa !25
  %i.cx = add nsw i64 %i.cu, -1                   ; 3 uses
  %i.cy = icmp eq i64 %i.cx, 0                    ; 2 uses
  br i1 %i.cy, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit148, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %i.cz = getelementptr i8, ptr %i.cw, i64 4
  %.idx.i.i.i.i.i.i.i147 = shl nuw nsw i64 %i.cx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cz, i8 0, i64 %.idx.i.i.i.i.i.i.i147, i1 false), !tbaa !25
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit148

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit148:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #16
          to label %.noexc151 unwind label %bb.q  ; 9 uses

.noexc151:                                        ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit148
  store i32 0, ptr %i.da, align 4, !tbaa !35
  br i1 %i.cy, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc151
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %.idx.i.i.i.i.i.i.i149 = shl nuw nsw i64 %i.cx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.db, i8 0, i64 %.idx.i.i.i.i.i.i.i149, i1 false), !tbaa !35
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc151
  %i.dc = sub nsw i32 0, %3                       ; 2 uses
  %.not190 = icmp slt i32 %3, 0
  br i1 %.not190, label %._crit_edge193, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.dd = mul nuw nsw i32 %3, %3
  %i.de = trunc i64 %i.bt to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.0106192 = phi i32 [ %i.dc, %.preheader.lr.ph ], [ %i.dp, %._crit_edge ] ; 5 uses
  %.0107191 = phi i32 [ 0, %.preheader.lr.ph ], [ %.2, %._crit_edge ]
  %i.df = mul nsw i32 %.0106192, %.0106192
  %i.dg = mul i32 %.0106192, %i.de
  br label %bb.r

._crit_edge193:                                   ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.0107.lcssa = phi i32 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %.2, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !36
  store i32 0, ptr %20, align 4, !tbaa !37
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !39
  %i.dk = load i32, ptr %0, align 8, !tbaa !8
  %i.dl = and i32 %i.dk, 4095
  %i.dm = icmp eq i32 %i.dl, 5
  br i1 %i.dm, label %bb.u, label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit160

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit148
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit158

._crit_edge:                                      ; preds = %bb.t
  %i.dp = add i32 %.0106192, 1
  %exitcond197.not = icmp eq i32 %.0106192, %3
  br i1 %exitcond197.not, label %._crit_edge193, label %.preheader, !llvm.loop !40

bb.r:                                             ; preds = %.preheader, %bb.t
  %.0189 = phi i32 [ %i.dc, %.preheader ], [ %i.ea, %bb.t ] ; 5 uses
  %.1188 = phi i32 [ %.0107191, %.preheader ], [ %.2, %bb.t ] ; 3 uses
  %i.dq = mul nsw i32 %.0189, %.0189
  %i.dr = add nuw nsw i32 %i.dq, %i.df            ; 2 uses
  %25 = icmp samesign ugt i32 %i.dr, %i.dd
  br i1 %25, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %26 = uitofp nneg i32 %i.dr to double
  %i.ds = fmul double %i.au, %26
  %i.dt = call double @exp(double noundef %i.ds) #15
  %i.du = fptrunc double %i.dt to float
  %i.dv = sext i32 %.1188 to i64                  ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.dv
  store float %i.du, ptr %i.dw, align 4, !tbaa !25
  %i.dx = add i32 %.0189, %i.dg
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dv
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !35
  %i.dz = add nsw i32 %.1188, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.2 = phi i32 [ %i.dz, %bb.s ], [ %.1188, %bb.r ] ; 3 uses
  %i.ea = add i32 %.0189, 1
  %exitcond196.not = icmp eq i32 %.0189, %3
  br i1 %exitcond196.not, label %._crit_edge, label %bb.r, !llvm.loop !41

bb.u:                                             ; preds = %._crit_edge193
  %i.eb = load i32, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.ec = and i32 %i.eb, 4095
  %i.ed = icmp eq i32 %i.ec, 5
  br i1 %i.ed, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc24JointBilateralFilter_32fINS_3VecIfLi1EEES3_EE, i64 16), ptr %21, align 8, !tbaa !42
  %i.ee = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %10, ptr %i.ee, align 8, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %11, ptr %i.ef, align 8, !tbaa !44
  %i.eg = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %2, ptr %i.eg, align 8, !tbaa !44
  %i.eh = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i32 %3, ptr %i.eh, align 8, !tbaa !46
  %i.ei = getelementptr inbounds nuw i8, ptr %21, i64 36
  store i32 %.0107.lcssa, ptr %i.ei, align 4, !tbaa !51
  %i.ej = getelementptr inbounds nuw i8, ptr %21, i64 40
  store float %i.ah, ptr %i.ej, align 8, !tbaa !52
  %i.ek = getelementptr inbounds nuw i8, ptr %21, i64 48
  store ptr %i.da, ptr %i.ek, align 8, !tbaa !53
  %i.el = getelementptr inbounds nuw i8, ptr %21, i64 56
  store ptr %i.cw, ptr %i.el, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw i8, ptr %21, i64 64
  store ptr %i.ae, ptr %i.em, align 8, !tbaa !55
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %21, double noundef -1.000000e+00)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  %.pre = load i32, ptr %1, align 8, !tbaa !8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit156

bb.y:                                             ; preds = %bb.w, %bb.u
  %i.eo = phi i32 [ %.pre, %bb.w ], [ %i.eb, %bb.u ]
  %i.ep = and i32 %i.eo, 4095
  %i.eq = icmp eq i32 %i.ep, 69
  br i1 %i.eq, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc24JointBilateralFilter_32fINS_3VecIfLi1EEENS2_IfLi3EEEEE, i64 16), ptr %22, align 8, !tbaa !42
  %i.er = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %10, ptr %i.er, align 8, !tbaa !44
  %i.es = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %11, ptr %i.es, align 8, !tbaa !44
  %i.et = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %2, ptr %i.et, align 8, !tbaa !44
  %i.eu = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i32 %3, ptr %i.eu, align 8, !tbaa !56
  %i.ev = getelementptr inbounds nuw i8, ptr %22, i64 36
  store i32 %.0107.lcssa, ptr %i.ev, align 4, !tbaa !58
  %i.ew = getelementptr inbounds nuw i8, ptr %22, i64 40
  store float %i.ah, ptr %i.ew, align 8, !tbaa !59
  %i.ex = getelementptr inbounds nuw i8, ptr %22, i64 48
  store ptr %i.da, ptr %i.ex, align 8, !tbaa !60
  %i.ey = getelementptr inbounds nuw i8, ptr %22, i64 56
  store ptr %i.cw, ptr %i.ey, align 8, !tbaa !61
  %i.ez = getelementptr inbounds nuw i8, ptr %22, i64 64
  store ptr %i.ae, ptr %i.ez, align 8, !tbaa !62
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %22, double noundef -1.000000e+00)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit156

bb.ac:                                            ; preds = %bb.y, %bb.aa, %._crit_edge193
  %i.fb = load i32, ptr %0, align 8, !tbaa !8
  %i.fc = and i32 %i.fb, 4095
  %i.fd = icmp eq i32 %i.fc, 69
  br i1 %i.fd, label %bb.ad, label %_ZNSt6vectorIfSaIfEED2Ev.exit154

bb.ad:                                            ; preds = %bb.ac
  %i.fe = load i32, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.ff = and i32 %i.fe, 4095
  %i.fg = icmp eq i32 %i.ff, 5
  br i1 %i.fg, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc24JointBilateralFilter_32fINS_3VecIfLi3EEENS2_IfLi1EEEEE, i64 16), ptr %23, align 8, !tbaa !42
  %i.fh = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %10, ptr %i.fh, align 8, !tbaa !44
  %i.fi = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %11, ptr %i.fi, align 8, !tbaa !44
  %i.fj = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %2, ptr %i.fj, align 8, !tbaa !44
  %i.fk = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i32 %3, ptr %i.fk, align 8, !tbaa !63
  %i.fl = getelementptr inbounds nuw i8, ptr %23, i64 36
  store i32 %.0107.lcssa, ptr %i.fl, align 4, !tbaa !65
  %i.fm = getelementptr inbounds nuw i8, ptr %23, i64 40
  store float %i.ah, ptr %i.fm, align 8, !tbaa !66
  %i.fn = getelementptr inbounds nuw i8, ptr %23, i64 48
  store ptr %i.da, ptr %i.fn, align 8, !tbaa !67
  %i.fo = getelementptr inbounds nuw i8, ptr %23, i64 56
  store ptr %i.cw, ptr %i.fo, align 8, !tbaa !68
  %i.fp = getelementptr inbounds nuw i8, ptr %23, i64 64
  store ptr %i.ae, ptr %i.fp, align 8, !tbaa !69
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %23, double noundef -1.000000e+00)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  %.pre198 = load i32, ptr %1, align 8, !tbaa !8
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit156

bb.ah:                                            ; preds = %bb.af, %bb.ad
  %i.fr = phi i32 [ %.pre198, %bb.af ], [ %i.fe, %bb.ad ]
  %i.fs = and i32 %i.fr, 4095
  %i.ft = icmp eq i32 %i.fs, 69
  br i1 %i.ft, label %bb.ai, label %_ZNSt6vectorIfSaIfEED2Ev.exit154

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc24JointBilateralFilter_32fINS_3VecIfLi3EEES3_EE, i64 16), ptr %24, align 8, !tbaa !42
  %i.fu = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %10, ptr %i.fu, align 8, !tbaa !44
  %i.fv = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %11, ptr %i.fv, align 8, !tbaa !44
  %i.fw = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %2, ptr %i.fw, align 8, !tbaa !44
  %i.fx = getelementptr inbounds nuw i8, ptr %24, i64 32
  store i32 %3, ptr %i.fx, align 8, !tbaa !70
  %i.fy = getelementptr inbounds nuw i8, ptr %24, i64 36
  store i32 %.0107.lcssa, ptr %i.fy, align 4, !tbaa !72
  %i.fz = getelementptr inbounds nuw i8, ptr %24, i64 40
  store float %i.ah, ptr %i.fz, align 8, !tbaa !73
  %i.ga = getelementptr inbounds nuw i8, ptr %24, i64 48
  store ptr %i.da, ptr %i.ga, align 8, !tbaa !74
  %i.gb = getelementptr inbounds nuw i8, ptr %24, i64 56
  store ptr %i.cw, ptr %i.gb, align 8, !tbaa !75
  %i.gc = getelementptr inbounds nuw i8, ptr %24, i64 64
  store ptr %i.ae, ptr %i.gc, align 8, !tbaa !76
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %24, double noundef -1.000000e+00)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %24) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit154

bb.ak:                                            ; preds = %bb.ai
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %24) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit156

_ZNSt6vectorIfSaIfEED2Ev.exit154:                 ; preds = %bb.ah, %bb.aj, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.cv) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.cv) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc23jointBilateralFilter_8uERNS_3MatES2_S2_iddi:bb.a
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.h, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.k = mul nuw nsw i64 %indvars.iv, %indvars.iv
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = fmul double %i.c, %i.m
  %i.o = tail call double @exp(double noundef %i.n) #15
  %i.p = fptrunc double %i.o to float
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float %i.p, ptr %i.q, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !79

bb.c:                                             ; preds = %bb.b
  %i.r = shl nsw i32 %3, 1
  %i.s = or disjoint i32 %i.r, 1                  ; 2 uses
  %i.t = fmul double %5, %5
  %i.u = fdiv double -5.000000e-01, %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !19
  store i32 16842752, ptr %9, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %0, ptr %i.x, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.z, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !20
  store ptr %7, ptr %i.y, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %3, i32 noundef %3, i32 noundef %3, i32 noundef %3, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.ab, align 4, !tbaa !19
  store i32 16842752, ptr %12, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %1, ptr %i.ac, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.ae, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !20
  store ptr %8, ptr %i.ad, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %3, i32 noundef %3, i32 noundef %3, i32 noundef %3, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !29
  %i.ah = load i32, ptr %8, align 8, !tbaa !8     ; 2 uses
  %i.ai = lshr i32 %i.ah, 5
  %i.aj = and i32 %i.ai, 127
  %i.ak = add nuw nsw i32 %i.aj, 1
  %i.al = shl i32 %i.ah, 2
  %i.am = and i32 %i.al, 124
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = lshr i64 1275511473185297, %i.an
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 15
  %i.ar = mul nuw nsw i32 %i.aq, %i.ak
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = udiv i64 %i.ag, %i.as                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.av = load i64, ptr %i.au, align 8, !tbaa !29
  %i.aw = load i32, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.ax = lshr i32 %i.aw, 5
  %i.ay = and i32 %i.ax, 127
  %i.az = add nuw nsw i32 %i.ay, 1
  %i.ba = shl i32 %i.aw, 2
  %i.bb = and i32 %i.ba, 124
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 1275511473185297, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 15
  %i.bg = mul nuw nsw i32 %i.bf, %i.az
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = udiv i64 %i.av, %i.bh
  %i.bj = icmp eq i64 %i.at, %i.bi
  br i1 %i.bj, label %bb.m, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit138

bb.g:                                             ; preds = %bb.d
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit138

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8ximgproc23jointBilateralFilter_8uERNS_3MatES2_S2_iddi, ptr noundef nonnull @.str.1, i32 noundef 291) #17
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !34
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn115 = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit138

bb.m:                                             ; preds = %bb.e
  %i.bt = mul nsw i32 %i.s, %i.s
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 2                ; 6 uses
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #16
          to label %.noexc unwind label %bb.n     ; 9 uses

.noexc:                                           ; preds = %bb.m
  store float 0.000000e+00, ptr %i.bw, align 4, !tbaa !25
  %i.bx = add nsw i64 %i.bu, -1                   ; 3 uses
  %i.by = icmp eq i64 %i.bx, 0                    ; 2 uses
  br i1 %i.by, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit126, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %i.bz = getelementptr i8, ptr %i.bw, i64 4
  %.idx.i.i.i.i.i.i.i125 = shl nuw nsw i64 %i.bx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bz, i8 0, i64 %.idx.i.i.i.i.i.i.i125, i1 false), !tbaa !25
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit126

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit126:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #16
          to label %.noexc129 unwind label %bb.o  ; 9 uses

.noexc129:                                        ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit126
  store i32 0, ptr %i.ca, align 4, !tbaa !35
  br i1 %i.by, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc129
  %i.cb = getelementptr i8, ptr %i.ca, i64 4
  %.idx.i.i.i.i.i.i.i127 = shl nuw nsw i64 %i.bx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cb, i8 0, i64 %.idx.i.i.i.i.i.i.i127, i1 false), !tbaa !35
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc129
  %i.cc = sub nsw i32 0, %3                       ; 2 uses
  %.not166 = icmp slt i32 %3, 0
  br i1 %.not166, label %._crit_edge169, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.cd = mul nuw nsw i32 %3, %3
  %i.ce = trunc i64 %i.at to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.089168 = phi i32 [ %i.cc, %.preheader.lr.ph ], [ %i.cp, %._crit_edge ] ; 5 uses
  %.090167 = phi i32 [ 0, %.preheader.lr.ph ], [ %.2, %._crit_edge ]
  %i.cf = mul nsw i32 %.089168, %.089168
  %i.cg = mul i32 %.089168, %i.ce
  br label %bb.p

._crit_edge169:                                   ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %.090.lcssa = phi i32 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %.2, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !36
  store i32 0, ptr %17, align 4, !tbaa !37
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !39
  %i.ck = load i32, ptr %0, align 8, !tbaa !8
  %i.cl = and i32 %i.ck, 4095
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.s, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit138

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit126
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit136

._crit_edge:                                      ; preds = %bb.r
  %i.cp = add i32 %.089168, 1
  %exitcond173.not = icmp eq i32 %.089168, %3
  br i1 %exitcond173.not, label %._crit_edge169, label %.preheader, !llvm.loop !80

bb.p:                                             ; preds = %.preheader, %bb.r
  %.0165 = phi i32 [ %i.cc, %.preheader ], [ %i.da, %bb.r ] ; 5 uses
  %.1164 = phi i32 [ %.090167, %.preheader ], [ %.2, %bb.r ] ; 3 uses
  %i.cq = mul nsw i32 %.0165, %.0165
  %i.cr = add nuw nsw i32 %i.cq, %i.cf            ; 2 uses
  %22 = icmp samesign ugt i32 %i.cr, %i.cd
  br i1 %22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %23 = uitofp nneg i32 %i.cr to double
  %i.cs = fmul double %i.u, %23
  %i.ct = call double @exp(double noundef %i.cs) #15
  %i.cu = fptrunc double %i.ct to float
  %i.cv = sext i32 %.1164 to i64                  ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cv
  store float %i.cu, ptr %i.cw, align 4, !tbaa !25
  %i.cx = add i32 %.0165, %i.cg
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cv
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !35
  %i.cz = add nsw i32 %.1164, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.2 = phi i32 [ %i.cz, %bb.q ], [ %.1164, %bb.p ] ; 3 uses
  %i.da = add i32 %.0165, 1
  %exitcond172.not = icmp eq i32 %.0165, %3
  br i1 %exitcond172.not, label %._crit_edge, label %bb.p, !llvm.loop !81

bb.s:                                             ; preds = %._crit_edge169
  %i.db = load i32, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.dc = and i32 %i.db, 4095
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc23JointBilateralFilter_8uINS_3VecIhLi1EEES3_EE, i64 16), ptr %18, align 8, !tbaa !42
  %i.de = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %7, ptr %i.de, align 8, !tbaa !44
  %i.df = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %8, ptr %i.df, align 8, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %2, ptr %i.dg, align 8, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i32 %3, ptr %i.dh, align 8, !tbaa !82
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 36
  store i32 %.090.lcssa, ptr %i.di, align 4, !tbaa !84
  %i.dj = getelementptr inbounds nuw i8, ptr %18, i64 48
  store ptr %i.ca, ptr %i.dj, align 8, !tbaa !85
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 56
  store ptr %i.bw, ptr %i.dk, align 8, !tbaa !86
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 64
  store ptr %i.i, ptr %i.dl, align 8, !tbaa !87
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, double noundef -1.000000e+00)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  %.pre = load i32, ptr %1, align 8, !tbaa !8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit134

bb.w:                                             ; preds = %bb.u, %bb.s
  %i.dn = phi i32 [ %.pre, %bb.u ], [ %i.db, %bb.s ]
  %i.do = and i32 %i.dn, 4095
  %i.dp = icmp eq i32 %i.do, 64
  br i1 %i.dp, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc23JointBilateralFilter_8uINS_3VecIhLi1EEENS2_IhLi3EEEEE, i64 16), ptr %19, align 8, !tbaa !42
  %i.dq = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %7, ptr %i.dq, align 8, !tbaa !44
  %i.dr = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %8, ptr %i.dr, align 8, !tbaa !44
  %i.ds = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %2, ptr %i.ds, align 8, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i32 %3, ptr %i.dt, align 8, !tbaa !88
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 36
  store i32 %.090.lcssa, ptr %i.du, align 4, !tbaa !90
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr %i.ca, ptr %i.dv, align 8, !tbaa !91
  %i.dw = getelementptr inbounds nuw i8, ptr %19, i64 56
  store ptr %i.bw, ptr %i.dw, align 8, !tbaa !92
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 64
  store ptr %i.i, ptr %i.dx, align 8, !tbaa !93
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %19, double noundef -1.000000e+00)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit134

bb.aa:                                            ; preds = %bb.w, %bb.y, %._crit_edge169
  %i.dz = load i32, ptr %0, align 8, !tbaa !8
  %i.ea = and i32 %i.dz, 4095
  %i.eb = icmp eq i32 %i.ea, 64
  br i1 %i.eb, label %bb.ab, label %_ZNSt6vectorIfSaIfEED2Ev.exit132

bb.ab:                                            ; preds = %bb.aa
  %i.ec = load i32, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.ed = and i32 %i.ec, 4095
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc23JointBilateralFilter_8uINS_3VecIhLi3EEENS2_IhLi1EEEEE, i64 16), ptr %20, align 8, !tbaa !42
  %i.ef = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %7, ptr %i.ef, align 8, !tbaa !44
  %i.eg = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %8, ptr %i.eg, align 8, !tbaa !44
  %i.eh = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %2, ptr %i.eh, align 8, !tbaa !44
  %i.ei = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i32 %3, ptr %i.ei, align 8, !tbaa !94
  %i.ej = getelementptr inbounds nuw i8, ptr %20, i64 36
  store i32 %.090.lcssa, ptr %i.ej, align 4, !tbaa !96
  %i.ek = getelementptr inbounds nuw i8, ptr %20, i64 48
  store ptr %i.ca, ptr %i.ek, align 8, !tbaa !97
  %i.el = getelementptr inbounds nuw i8, ptr %20, i64 56
  store ptr %i.bw, ptr %i.el, align 8, !tbaa !98
  %i.em = getelementptr inbounds nuw i8, ptr %20, i64 64
  store ptr %i.i, ptr %i.em, align 8, !tbaa !99
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %20, double noundef -1.000000e+00)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  %.pre174 = load i32, ptr %1, align 8, !tbaa !8
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit134

bb.af:                                            ; preds = %bb.ad, %bb.ab
  %i.eo = phi i32 [ %.pre174, %bb.ad ], [ %i.ec, %bb.ab ]
  %i.ep = and i32 %i.eo, 4095
  %i.eq = icmp eq i32 %i.ep, 64
  br i1 %i.eq, label %bb.ag, label %_ZNSt6vectorIfSaIfEED2Ev.exit132

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc23JointBilateralFilter_8uINS_3VecIhLi3EEES3_EE, i64 16), ptr %21, align 8, !tbaa !42
  %i.er = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %7, ptr %i.er, align 8, !tbaa !44
  %i.es = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %8, ptr %i.es, align 8, !tbaa !44
  %i.et = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %2, ptr %i.et, align 8, !tbaa !44
  %i.eu = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i32 %3, ptr %i.eu, align 8, !tbaa !100
  %i.ev = getelementptr inbounds nuw i8, ptr %21, i64 36
  store i32 %.090.lcssa, ptr %i.ev, align 4, !tbaa !102
  %i.ew = getelementptr inbounds nuw i8, ptr %21, i64 48
  store ptr %i.ca, ptr %i.ew, align 8, !tbaa !103
  %i.ex = getelementptr inbounds nuw i8, ptr %21, i64 56
  store ptr %i.bw, ptr %i.ex, align 8, !tbaa !104
  %i.ey = getelementptr inbounds nuw i8, ptr %21, i64 64
  store ptr %i.i, ptr %i.ey, align 8, !tbaa !105
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %21, double noundef -1.000000e+00)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit132

bb.ai:                                            ; preds = %bb.ag
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit134

_ZNSt6vectorIfSaIfEED2Ev.exit132:                 ; preds = %bb.af, %bb.ah, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.bv) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bv) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #18
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit134:                 ; preds = %bb.ai, %bb.ae, %bb.z, %bb.v
  %.pn117 = phi { ptr, i32 } [ %i.ez, %bb.ai ], [ %i.en, %bb.ae ], [ %i.dy, %bb.z ], [ %i.dm, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
end_hunk_1
